package com.jsoj.app.jsoj.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

public class FileUtils {

    public static String getSuffix(String fileName){
        return fileName.substring(fileName.lastIndexOf("."));
    }

    public static String getFileName(String fileOriginName){
        return UUID.randomUUID().toString().replaceAll("-","")+getSuffix(fileOriginName);
    }

    public static String upload(MultipartFile file, String path, String fileName){

//         生成新的文件名
        String newName = getFileName(fileName);
        String realPath = path + "/" + newName;

        File dest = new File(realPath);

        //判断文件父目录是否存在
        if(!dest.getParentFile().exists()){
            dest.getParentFile().mkdir();
        }

        try {
            //保存文件
            file.transferTo(dest);
            return newName;
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }

}
