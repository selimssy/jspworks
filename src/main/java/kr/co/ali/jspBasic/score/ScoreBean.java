package kr.co.ali.jspBasic.score;

public class ScoreBean {
	
	// 국어점수, 영어점수, 수학점수, 총점, 평균 총 5개의 데이터를 관리하는 자바빈 클래스
	
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double avg;
	
	
	
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	
	
}
