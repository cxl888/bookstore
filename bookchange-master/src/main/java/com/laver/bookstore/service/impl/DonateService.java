package com.laver.bookstore.service.impl;

import com.laver.bookstore.domain.Donate;
import com.laver.bookstore.mapper.DonateMapper;
import com.laver.bookstore.service.IDonateService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DonateService implements IDonateService {

    @Resource
    private DonateMapper donateMapper;

    @Override
    public List<Donate> findAllBook() {
        return donateMapper.findAllBook();
    }

    @Override
    public int addDonate(Donate donate) {
        return donateMapper.insert(donate);
    }

    @Override
    public Donate findById(Integer bid) {
        System.out.println(bid);
        return donateMapper.selectByPrimaryKey(bid);
    }


}
