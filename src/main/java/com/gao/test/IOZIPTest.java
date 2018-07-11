package com.gao.test;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class IOZIPTest {

    public static void main(String[] args){
        writeZip();
    }

    private static void writeZip() {
        ZipOutputStream zipOut = null;
        try {
            zipOut = new ZipOutputStream(new FileOutputStream("E:\\20150531\\zip1.zip"));//若文件不存在则创建
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }



            ZipEntry entry = new ZipEntry("123123123"+".txt");
            try {
                zipOut.putNextEntry(entry);// 此方法会清空zip文件原来存在的内容，然后创建新的文件1.txt，并将流定位到条目数据的开始处
                String xx="dahdaSD娃娃激动啊是的12313123，老婆，da；‘【。，";
                byte[] bb = xx.getBytes();
                zipOut.write(bb);
            } catch (IOException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }

        try {
            zipOut.close();//必须关闭，否则压缩文件错误：不可预料的压缩文件末端
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}

