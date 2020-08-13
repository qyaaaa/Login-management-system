package com.oracle.tool;

import java.util.ArrayList;

/**
 * @author JoeZhou
 */
public class HelloWorld2 {
    public static void main(String[] args) {


        // 在声明列表的时候 使用泛型
        // 泛型就是声明你的列表中装的是什么类型的
        // 泛型的格式是，在类型后面使用<>，在<>中使用泛型类型
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("你");
        arrayList.add("好");

        // 遍历它？
        for(String e : arrayList){
            System.out.println(e);
        }

    }
}
