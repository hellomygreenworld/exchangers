package com.snut.cse.exchangers.article.persistence;

import com.snut.cse.exchangers.article.domain.ArticleVO;
import com.snut.cse.exchangers.commons.paging.Criteria;
import com.snut.cse.exchangers.commons.paging.SearchCriteria;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;


@Repository
public class ArticleDAOImpl implements ArticleDAO {

    private static final String NAMESPACE = "com.snut.cse.exchangers.mappers.article.articleMapper";

    private final SqlSession sqlSession;

    @Inject
    public ArticleDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void create(ArticleVO articleVO) throws Exception {
        sqlSession.insert(NAMESPACE + ".create", articleVO);
    }

    @Override
    public ArticleVO read(Integer articleNo) throws Exception {
        return sqlSession.selectOne( NAMESPACE + ".read", articleNo);
    }

    @Override
    public void update(ArticleVO articleVO) throws Exception {
        sqlSession.update(NAMESPACE + ".update", articleVO);
    }

    @Override
    public void delete(Integer articleNo) throws Exception {
        sqlSession.delete(NAMESPACE + ".delete", articleNo);
    }

    @Override
    public List<ArticleVO> listAll() throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listAll");
    }

    @Override
    public List<ArticleVO> listPaging(int page) throws Exception {

        if (page <= 0) {
            page = 1;
        }
        page = (page - 1) * 10;

        return sqlSession.selectList(NAMESPACE + ".listPaging", page);
    }

    @Override
    public List<ArticleVO> listCriteria(Criteria criteria) throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
    }

    @Override
    public int countArticles(Criteria criteria) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".countArticles", criteria);
    }

    @Override
    public List<ArticleVO> listSearch(SearchCriteria searchCriteria) throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listSearch", searchCriteria);
    }

    @Override
    public int countSearchedArticles(SearchCriteria searchCriteria) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".countSearchedArticles", searchCriteria);
    }
}