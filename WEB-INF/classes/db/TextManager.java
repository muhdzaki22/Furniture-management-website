package db;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class TextManager {
    static int SIZE = 6;
    String[] savedText = new String[SIZE];

    public TextManager() throws IOException {
        BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\twgie\\eclipse-workspace\\A1(updatedV3)\\src\\main\\java\\db\\textData.txt"));

        for (int i = 0; i < SIZE; i++) {
            savedText[i] = br.readLine();
        }
    }
    public String getT0() {
        return savedText[0];
    }
    public void setT0(String a) {
        this.savedText[0] = a;
    }

    public String getT1() {
        return savedText[1];
    }
    public void setT1(String b) {
        this.savedText[1] = b;
    }

    public String getT2() {
        return savedText[2];
    }
    public void setT2(String c) {
        this.savedText[2] = c;
    }

    public String getT3() { return savedText[3]; }
    public void setT3(String d) {this.savedText[3] = d;}

    public String getT4() {
        return savedText[4];
    }
    public void setT4(String e) {
        this.savedText[4] = e;
    }

    public String getT5() { return savedText[5]; }
    public void setT5(String f) {
        this.savedText[5] = f;
    }

    public void update(String a, String b, String c, String d, String e, String f) {
        String[] newText = {a, b, c, d, e, f};
        for (int i = 0; i < newText.length; i++) {
            if (newText[i] == null)
                newText[i] = savedText[i];
            savedText[i] = newText[i];
        }
    }

    public static void main(String[] args) {}
}
