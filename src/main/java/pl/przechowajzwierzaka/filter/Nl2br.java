package pl.przechowajzwierzaka.filter;

public class Nl2br {
    public static String br(String text) {
        if (text != null && !text.isEmpty()) { return text.replace("\n", "<br>"); }
        return null;
    }
}
