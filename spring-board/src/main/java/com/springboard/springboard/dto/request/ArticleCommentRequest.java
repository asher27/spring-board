package com.springboard.springboard.dto.request;

import com.springboard.springboard.dto.ArticleCommentDto;
import com.springboard.springboard.dto.UserAccountDto;

import java.io.Serializable;

/**
 * A DTO for the {@link com.springboard.springboard.domain.ArticleComment} entity
 */
public record ArticleCommentRequest(Long articleId, String content) implements Serializable {

    public static ArticleCommentRequest of(Long articleId, String content) {
        return new ArticleCommentRequest(articleId, content);
    }

    public ArticleCommentDto toDto(UserAccountDto userAccountDto) {
        return ArticleCommentDto.of(
                articleId,
                userAccountDto,
                content
        );
    }
}