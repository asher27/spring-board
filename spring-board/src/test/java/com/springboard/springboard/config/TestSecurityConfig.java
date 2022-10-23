package com.springboard.springboard.config;

import com.springboard.springboard.domain.UserAccount;
import com.springboard.springboard.repository.UserAccountRepository;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.event.annotation.BeforeTestMethod;

import java.util.Optional;

import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.BDDMockito.given;

@Import(SecurityConfig.class)
public class TestSecurityConfig {

    @MockBean private UserAccountRepository userAccountRepository;

    @BeforeTestMethod
    public void securitySetUp() {
        given(userAccountRepository.findById(anyString())).willReturn((Optional.of(UserAccount.of(
                "unoTest",
                "pw",
                "email",
                "uno-test",
                "test momo"
        ))));
    }

}
