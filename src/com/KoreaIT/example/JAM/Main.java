package com.KoreaIT.example.JAM;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
	
	static List<Article> articles = new ArrayList<>();
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int lastArticleId = 0;
		while(true) {
			System.out.print("명령어 )");
			String command = sc.nextLine().trim();
			
			if(command.equals("exit")) {
				break;
			}
			
			if(command.equals("article write")) {
				int id = lastArticleId + 1;
				System.out.print("제목: ");
				String title = sc.nextLine();
				System.out.print("내용: ");
				String body = sc.nextLine();
				articles.add(new Article(id, title, body));
				System.out.println(id + "번글이 생성되었습니다.");
				lastArticleId++;
			}
			else if(command.equals("article list")) {
				
				if(articles.size() == 0) {
					System.out.println("게시물이 없습니다.");
				}
				
				System.out.println("번호   /   제목");
				for(int i = articles.size()-1; i >= 0; i--) {
					Article article = articles.get(i);
					System.out.printf("%d   /   %s\n", article.id, article.title);
				}
			}
			
		}
		System.out.println("프로그램 종료");
		sc.close();
		
	}

}

