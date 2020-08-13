package com.oracle.tool;

/**
 * @author JoeZhou
 */
public class HelloWorld {
    public static void main(String[] args) {

        int num = 59;

        /*if (num >= 60) {
            System.out.println("及格");
        } else {
            System.out.println("不及格");
        }*/
        // 三目运算符 三步 三元
        // 格式：判断 ? 结果1 : 结果2

        String result = num >= 60 ? "及格" : "不及格";
        System.out.println(result);

    }
}
