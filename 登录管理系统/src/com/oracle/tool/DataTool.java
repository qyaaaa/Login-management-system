package com.oracle.tool;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * @author JoeZhou
 */
@SuppressWarnings("all")
public class DataTool {
    private HashMap map;

    public ArrayList buildData() {
        ArrayList users = new ArrayList();
        users.add(buildChangGui());
        users.add(buildDaJiao());
        users.add(buildFangZheng());
        users.add(buildGuangKun());
        users.add(buildLiuDaNaoDai());
        users.add(buildLiuNeng());
        users.add(buildLaoSiXiFu());
        users.add(buildSongFuGui());
        users.add(buildSongXiaoFeng());
        users.add(buildSongXuLaoNian());
        users.add(buildYuTian());
        users.add(buildZhaoSi());
        return users;
    }

    private Map buildChangGui() {
        map = new HashMap(6);
        map.put("id", "1");
        map.put("name", "空洞骑士");
        map.put("age", "5");
        map.put("gender", "male");
        map.put("info", "圣巢一哥");
        map.put("photo", "1.png");
        return map;
    }

    private Map buildDaJiao() {
        map = new HashMap(6);
        map.put("id", "2");
        map.put("name", "小姐姐");
        map.put("age", "6");
        map.put("gender", "female");
        map.put("info", "圣巢一姐");
        map.put("photo", "2.jpg");
        return map;
    }

    private Map buildFangZheng() {
        map = new HashMap(6);
        map.put("id", "3");
        map.put("name", "奎若");
        map.put("age", "10");
        map.put("gender", "male");
        map.put("info", "放水一哥");
        map.put("photo", "3.jpg");
        return map;
    }

    private Map buildGuangKun() {
        map = new HashMap(6);
        map.put("id", "4");
        map.put("name", "格林");
        map.put("age", "10");
        map.put("gender", "female");
        map.put("info", "传火之神");
        map.put("photo", "4.jpg");
        return map;
    }

    private Map buildLiuDaNaoDai() {
        map = new HashMap(6);
        map.put("id", "5");
        map.put("name", "佐特");
        map.put("age", "3");
        map.put("gender", "male");
        map.put("info", "吹牛大王");
        map.put("photo", "5.jpg");
        return map;
    }

    private Map buildLiuNeng() {
        map = new HashMap(6);
        map.put("id", "6");
        map.put("name", "无上辐光");
        map.put("age", "37");
        map.put("gender", "male");
        map.put("info", "永远的神");
        map.put("photo", "6.jpg");
        return map;
    }

    private Map buildLaoSiXiFu() {
        map = new HashMap(6);
        map.put("id", "7");
        map.put("name", "lace");
        map.put("age", "9");
        map.put("gender", "female");
        map.put("info", "剑术天才");
        map.put("photo", "7.jpg");
        return map;
    }

    private Map buildSongFuGui() {
        map = new HashMap(6);
        map.put("id", "8");
        map.put("name", "螳螂姐妹");
        map.put("age", "30");
        map.put("gender", "female");
        map.put("info", "新手门槛");
        map.put("photo", "8.jpg");
        return map;
    }

    private Map buildSongXiaoFeng() {
        map = new HashMap(6);
        map.put("id", "9");
        map.put("name", "前辈");
        map.put("age", "25");
        map.put("gender", "male");
        map.put("info", "一代容器");
        map.put("photo", "9.jpg");
        return map;
    }

    private Map buildSongXuLaoNian() {
        map = new HashMap(6);
        map.put("id", "10");
        map.put("name", "收藏家");
        map.put("age", "53");
        map.put("gender", "male");
        map.put("info", "收藏全部");
        map.put("photo", "10.png");
        return map;
    }

    private Map buildYuTian() {
        map = new HashMap(6);
        map.put("id", "11");
        map.put("name", "小迷妹");
        map.put("age", "1");
        map.put("gender", "female");
        map.put("info", "呆萌迷妹");
        map.put("photo", "11.jpg");
        return map;
    }

    private Map buildZhaoSi() {
        map = new HashMap(6);
        map.put("id", "12");
        map.put("name", "灵魂大师");
        map.put("age", "31");
        map.put("gender", "female");
        map.put("info", "实验狂人");
        map.put("photo", "12.jpg");
        return map;
    }


}
