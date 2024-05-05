public class CodeGeneratorForIf {
    public static void main(String[] args) {
        String condition = "x>5";
        String action = "y=x*2";

        String generatedCode = generateIfCode(condition, action);
        System.out.println("Generated code:");
        System.out.println(generatedCode);
    }

    public static String generateIfCode(String condition, String action) {
        StringBuilder codeBuilder = new StringBuilder();
        codeBuilder.append("if (").append(condition).append(") {\n");
        codeBuilder.append("\t").append(action).append(";\n");
        codeBuilder.append("}");
        return codeBuilder.toString();
    }
}
