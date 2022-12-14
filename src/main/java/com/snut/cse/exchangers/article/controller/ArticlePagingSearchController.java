package com.snut.cse.exchangers.article.controller;

import com.snut.cse.exchangers.article.service.ArticleService;
import com.snut.cse.exchangers.commons.paging.PageMaker;
import com.snut.cse.exchangers.commons.paging.SearchCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;

@Controller
@RequestMapping("/article/paging/search")
public class ArticlePagingSearchController {

    private static final Logger logger = LoggerFactory.getLogger(ArticlePagingSearchController.class);

    private final ArticleService articleService;

    @Inject
    public ArticlePagingSearchController(ArticleService articleService) {
        this.articleService = articleService;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
                       Model model) throws Exception {

        logger.info("search list() called ...");

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(searchCriteria);
        pageMaker.setTotalCount(articleService.countSearchedArticles(searchCriteria));

        model.addAttribute("articles", articleService.listSearch(searchCriteria));
        model.addAttribute("pageMaker", pageMaker);

        return "article/search/list";
    }

    // 조회 페이지
    @RequestMapping(value = "/read", method = RequestMethod.GET)
    public String read(@RequestParam("articleNo") int articleNo,
                       @ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
                       Model model) throws Exception {

        logger.info("search read() called ...");
        model.addAttribute("article", articleService.read(articleNo));

        return "article/search/read";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String writeGET() {

        logger.info("paging writeGET() called...");

        return "article/paging/write";
    }

    // 수정 페이지
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyGET(@RequestParam("articleNo") int articleNo,
                            @ModelAttribute("searchCriteria") SearchCriteria searchCriteria,
                            Model model) throws Exception {

        logger.info("search modifyGet() called ...");
        logger.info(searchCriteria.toString());
        model.addAttribute("article", articleService.read(articleNo));

        return "article/search/modify";
    }

    // 삭제 처리
    @RequestMapping(value = "/remove", method = RequestMethod.POST)
    public String remove(@RequestParam("articleNo") int articleNo,
                         SearchCriteria searchCriteria,
                         RedirectAttributes redirectAttributes) throws Exception {

        logger.info("search remove() called ...");
        articleService.delete(articleNo);
        redirectAttributes.addAttribute("page", searchCriteria.getPage());
        redirectAttributes.addAttribute("perPageNum", searchCriteria.getPerPageNum());
        redirectAttributes.addAttribute("searchType", searchCriteria.getSearchType());
        redirectAttributes.addAttribute("keyword", searchCriteria.getKeyword());
        redirectAttributes.addFlashAttribute("msg", "delSuccess");

        return "redirect:/article/paging/search/list";
    }

}