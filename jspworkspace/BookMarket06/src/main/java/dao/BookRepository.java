package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();
	
	public static BookRepository getInstance() {
		return instance;
	}
	
	public ArrayList<Book> getAllBooks(){	
		return listOfBooks;
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;
		
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null
				&& book.getBookId().equals(bookId)){
				bookById = book;
					break;
				}
		}
		
		return bookById;
		
	}	
	
	public BookRepository() {
		
		Book book_A = new Book("A1", "HTML5+CSS3", 22500);
		book_A.setAuthor("황재호");
		book_A.setDescription("HTML5, CSS3를 배우는 것보다 더 중요한 것은 그것을 이용해 웹 페이지를 구현하는 것입니다. 이 책은 HTML5 표준과 CSS3 표준을 사용하여 웹 페이지를 구현하는 방법을 중심으로 설명합니다. 웹 페이지 레이아웃, 스마트폰 레이아웃, 태블릿 PC 레이아웃, 소셜커머스 메인 페이지 레이아웃을 담았습니다.");
		book_A.setPublisher("한빛 미디어");
		book_A.setCategory("웹");
		book_A.setUnitsInStock(15);
		book_A.setTotalPages(556);
		book_A.setReleaseDate("12년도03월");
		book_A.setCondition("new");

		Book book_B = new Book("B1", "쉽게 배우는 자바 프로그래밍", 27000);
		book_B.setAuthor("우종중");
		book_B.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현을 한 흐름으로 학습할 수 있습니다. 또한 '기초 체력을 다지는 예제 → 셀프 테스트 → 생각을 논리적으로 정리하며 한 단계씩 풀어 가는 도전 과제 → 스토리가 가미된 흥미로운 프로그래밍 문제' 등을 통해 프로그래밍 실력을 차근차근 끌어올릴 수 있습니다.");
		book_B.setPublisher("한빛 아카데미");
		book_B.setCategory("컴퓨터언어");
		book_B.setUnitsInStock(9);
		book_B.setTotalPages(692);
		book_B.setReleaseDate("17년도07월");
		book_B.setCondition("new");
		
		Book book_C = new Book("C1", "정보보안개론", 28000);
		book_C.setAuthor("양대일");
		book_C.setDescription("이 책은 네트워크의 기본 흐름, 프로그램 실행 구조, 암호의 이해, 보안 솔루션의 구성, 보안 조직과 정책, 보안 전문가가 갖추어야 할 사항 등을 다룹니다. 또한 다른 분야이지만 보안을 공부할 때 알아두면 유용한 내용, 필자가 실무에 종사하면서 체득한 유용한 팁 등도 담고 있습니다. 보안을 처음 공부하거나 전공하는 사람 모두에게 정보 보안 전반에 대한 안목을 길러줄 것입니다.");
		book_C.setPublisher("한빛 아카데미");
		book_C.setCategory("보안");
		book_C.setUnitsInStock(7);
		book_C.setTotalPages(584);
		book_C.setReleaseDate("18년도10월");
		book_C.setCondition("new");
		

		listOfBooks.add(book_A);
		listOfBooks.add(book_B);
		listOfBooks.add(book_C);		
	}
	
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}