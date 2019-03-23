package com.laver.bookstore.service;

import com.laver.bookstore.domain.Donate;

import java.util.List;

public interface IDonateService {

    List<Donate> findAllBook();

    int addDonate(Donate donate);

    Donate findById(Integer bid);
}
