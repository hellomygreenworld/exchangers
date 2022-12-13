package com.snut.cse.exchangers.reply.service;

import com.snut.cse.exchangers.commons.paging.Criteria;
import com.snut.cse.exchangers.reply.domain.ReplyVO;

import java.util.List;

public interface ReplyService {

    List<ReplyVO> getReplies(Integer articleNo) throws Exception;

    List<ReplyVO> list(Integer articleNo) throws Exception;

    void addReply(ReplyVO replyVO) throws Exception;

    void modifyReply(ReplyVO replyVO) throws Exception;

    void removeReply(Integer replyNo) throws Exception;

    List<ReplyVO> getRepliesPaging(Integer articleNo, Criteria criteria) throws Exception;

    int countReplies(Integer articleNo) throws Exception;

}
