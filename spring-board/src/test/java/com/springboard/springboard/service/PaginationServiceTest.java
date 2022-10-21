package com.springboard.springboard.service;

import org.junit.jupiter.api.DisplayName;
import org.assertj.core.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.params.provider.Arguments.arguments;


@DisplayName("비지니스 로직 - 페이지네이션")
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.NONE, classes = PaginationService.class)
class PaginationServiceTest {

    private final PaginationService paginationService;

    public PaginationServiceTest(@Autowired PaginationService paginationService) {
        this.paginationService = paginationService;
    }

    @DisplayName("현재 페이지번호와 총 페이지 수를 주면, 페이징 바 리스트를 만들어 준다.")
    @MethodSource
    @ParameterizedTest(name = "[{index}] {0}, {1} => {2}")
    void givenCurrentPageNumberAndTotalPages_whenCalculating_thenReturnsPaginationBarNumbers(int currentPageNumber, int totalPages, List<Integer> expected) {
        // given

        // when
        List<Integer> actual = paginationService.getPaginationBarNumbers(currentPageNumber, totalPages);
        // then
        assertThat(actual).isEqualTo(expected);
    }

    static Stream<Arguments> givenCurrentPageNumberAndTotalPages_whenCalculating_thenReturnsPaginationBarNumbers() {
         return Stream.of(
                 arguments(0, 13, List.of(0,1,2,3,4)),
                 arguments(1, 13, List.of(0,1,2,3,4)),
                 arguments(2, 13, List.of(0,1,2,3,4)),
                 arguments(3, 13, List.of(1,2,3,4,5)),
                 arguments(4, 13, List.of(2,3,4,5,6)),
                 arguments(5, 13, List.of(3,4,5,6,7)),
                 arguments(6, 13, List.of(4,5,6,7,8)),
                 arguments(10, 13, List.of(8,9,10,11,12)),
                 arguments(11, 13, List.of(9,10,11,12)),
                 arguments(12, 13, List.of(10,11,12))
         );
    }

    @DisplayName("현재 설정되어 있는 페이지네이션 바의 길이를 알려준다.")
    @Test
    void givenNothing_whenCalling_thenReturnsCurrentBarLength() {
        // given

        // when
        int barLength = paginationService.currentBarLength();

        // then
        assertThat(barLength).isEqualTo(5);
    }
}