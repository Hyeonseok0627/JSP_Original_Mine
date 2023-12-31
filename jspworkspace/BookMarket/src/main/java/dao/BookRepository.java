package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {

	public ArrayList<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepository () {
		Book css = new Book("Hello Coding", "HTML5+CSS3", 15000);
		css.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으..." );
		css.setAuthor("황재호");
		css.setPublisher("한빛미디어");
		css.setCategory("컴퓨터공학");
		css.setCondition("new");
		css.setReleaseDate("2020년 08월");
		css.setTotalPages(250);
		css.setUnitsInStock(300);
		
		Book java = new Book("IT모바일", "쉽게 배우는 자바 프로그래밍", 27000);
		java.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현..." );
		java.setAuthor("우종증");
		java.setPublisher("한빛아카데미");
		java.setCategory("컴퓨터공학");
		java.setCondition("E-Book");
		java.setReleaseDate("2012년 09월");
		java.setTotalPages(350);
		java.setUnitsInStock(30);
		
		Book spring = new Book("IT모바일", "스프링4 입문", 27000);
		spring.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다..." );
		spring.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철 전민수");
		spring.setPublisher("한빛미디어");
		spring.setCategory("컴퓨터공학");
		spring.setCondition("Refurbished");
		spring.setReleaseDate("2021년 03월");
		spring.setTotalPages(300);
		spring.setUnitsInStock(400);
		
		listOfBooks.add(css);
		listOfBooks.add(java);
		listOfBooks.add(spring);
	}
	
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
  }
	
	//연습문제 6번에 의해 추가된 내용
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for (int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i); 
		
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
		
	} 
}