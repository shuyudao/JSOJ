package com.jsoj.app.jsoj.util;

import com.eclipsesource.v8.V8;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


//代码提交测试
@Component
public class JsTestRun {

    private static final Logger log = LoggerFactory.getLogger(JsTestRun.class);

    public boolean run(String code,String test){

        V8 v8 = V8.createV8Runtime(); //创建运行环境

        String[] testArr = test.split("&=&"); //获取测试用例

        for(int i = 0 ; i < testArr.length ; i++){

            String[] tempArr = testArr[i].split(" = ");
            if (tempArr.length<2){
                return false;
            }
            String rightResult = tempArr[1]; //正确结果

            try{

                String runResult = v8.executeStringScript(code+"JSON.stringify(" +tempArr[0]+ ")");
                if (!runResult.equals(rightResult)){
                    v8.release();
                    return false;
                }
            }catch (Exception e){
                log.error(e.getMessage());
                v8.release();
                return false;
            }
        }

        return true;

    }

}
