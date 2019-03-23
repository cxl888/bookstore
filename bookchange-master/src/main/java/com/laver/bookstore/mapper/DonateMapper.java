package com.laver.bookstore.mapper;

import com.laver.bookstore.domain.Donate;

import java.util.List;

public interface DonateMapper {

    int insert(Donate donate);

    List<Donate> findAllBook();

    Donate selectByPrimaryKey(Integer bid);
}
