package com.snut.cse.exchangers.article.service;

import javax.inject.Inject;
import java.util.List;

import com.snut.cse.exchangers.commons.paging.Criteria;
import com.snut.cse.exchangers.commons.paging.SearchCriteria;
import org.springframework.stereotype.Service;

import com.snut.cse.exchangers.article.persistence.ArticleDAO;
import com.snut.cse.exchangers.article.domain.ArticleVO;

@Service
public class ArticleServiceImpl implements ArticleService {

    private final ArticleDAO articleDAO;

    @Inject
    public ArticleServiceImpl(ArticleDAO articleDAO) {
        this.articleDAO = articleDAO;
    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        articleDAO.create(articleVO);
    }

    @Override
    public ArticleVO read(Integer articleNo) throws Exception {
        return articleDAO.read(articleNo);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        articleDAO.update(articleVO);
    }

    @Override
    public void delete(Integer articleNo) throws Exception {
        articleDAO.delete(articleNo);
    }

    @Override
    public List<ArticleVO> listAll() throws Exception {
        return articleDAO.listAll();
    }

    @Override
    public List<ArticleVO> listCriteria(Criteria criteria) throws Exception {
        return articleDAO.listCriteria(criteria);
    }

    @Override
    public int countArticles(Criteria criteria) throws Exception {
        return articleDAO.countArticles(criteria);
    }

    @Override
    public List<ArticleVO> listSearch(SearchCriteria searchCriteria) throws Exception {
        return articleDAO.listSearch(searchCriteria);
    }

    @Override
    public int countSearchedArticles(SearchCriteria searchCriteria) throws Exception {
        return articleDAO.countSearchedArticles(searchCriteria);
    }

}