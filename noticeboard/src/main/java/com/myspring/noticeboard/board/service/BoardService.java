package com.myspring.noticeboard.board.service;

import java.util.List;
import java.util.Map;

import com.myspring.noticeboard.board.vo.ArticleVO;

public interface BoardService {
	public List<ArticleVO> listArticles() throws Exception;
	public int addNewArticle(Map articleMap) throws Exception;
	//add reply
	public int addReply(Map articleMap) throws Exception;
	public ArticleVO viewArticle(int articleNO) throws Exception;
	//public Map viewArticle(int articleNO) throws Exception;
	public void modArticle(Map articleMap) throws Exception;
	public void removeArticle(int articleNO) throws Exception;
}