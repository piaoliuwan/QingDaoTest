package com.gao.util;


import java.text.SimpleDateFormat;
import java.util.Date;

public class ResultDto {
    private String status;//是否成功

    private Object data;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }


    public static void main(String [] args){
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String dateStr = simpleDateFormat.format(date);
        dateStr ="EquipFault_"+dateStr+":00";
        System.out.println(dateStr);
    }
}
