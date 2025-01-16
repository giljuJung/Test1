package dto;

public class ReplyDto {
	private int rno;
	private int bno;
	private String content;
	private String writer;
	private String writedate;
	
	public ReplyDto(int rno, int bno, String content, String writer, String writedate) {
		super();
		this.rno = rno;
		this.bno = bno;
		this.content = content;
		this.writer = writer;
		this.writedate = writedate;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
}
