
public class Adder {
	public static void main(String[] args) {
		try {
			int num1 = Integer.parseInt(args[0]);
			int num2 = Integer.parseInt(args[1]);
			System.out.printf("%d + %d = %d", num1, num2, num1+num2);
		} catch (NumberFormatException e) {
			System.out.println("잘못된 데이터가 입력되었습니다.");
		}
	}

}
