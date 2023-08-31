package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); //해당 ArrayList써서 데이터를 주고 받을 수 있게 한 코드(데이터베이스 데이터연동할 때도 이렇게 씀)
	private static ProductRepository instance = new ProductRepository(); //206 페이지 내용 추가
	
	public static ProductRepository getInstance() {
		return instance; //여기에서 new를 하게되면 기존의 phone, notebook, tablet 데이터가 사라지고 새로 시작하는 것이라 싱글톤 패턴을 써서 새롭게 객체쓰지말고, 추가 내용은 instance를 가져오게하는 것
	}
	
	//나중에 데이터베이스 연동을 배우면 그때는 데이터베이스의 데이터를 가지고 오는 쿼리를 넣어줌(그전이라 데이터를 직접 입력해준 것)
	//밑에 있는 건 생성자이며, 밑에서처럼 return listOfProducts 이렇게 반환시키면 해당 클래스의 생성자인 ProductRepository() {} 여기에 모든 값이 불러오게 되는 것
	//이렇게 되는 이유가 listOfProducts 객체(인스턴스)에 ProductRepository() 생성자의 phone, notebook, tablet 새로운 객체(인스턴스)를 추가한 것이라 listOfProducts에 해당 생성자 내용이 다 포함되어있음
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png"); //240 페이지 내용 추가
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED Display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png"); //240 페이지 내용 추가
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED Display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png"); //240 페이지 내용 추가
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	//해당 productId에 해당하는 Product 객체를 listOfProducts 리스트에서 찾아서 반환하는 메서드
	//즉, 객체 변수 listOfProducts에 저장된 모든 상품 목록에서 상품 아이디와 일치하는 상품을 가져오는 메서드
	public Product getProductById(String productId) {
		Product productById = null; //productById 변수를 null로 초기화
		
		for (int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i); //product 변수를 listOfProducts.get(i) 이렇게 리스트에서 가져오는 값으로 초기화
			//product가 null이 아니고, product의 get.ProductId() 메서드가 null이 아니고, 상품 목록의 product.getProductId() 메서드와 가져오는 productId가 동일하면
			//productById는 product와 동일하게 출력
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;//해당 부분은 173 페이지 내용
	}
	
	
	public void addProduct(Product product) {
		listOfProducts.add(product); //206 페이지 내용 추가
	}
}