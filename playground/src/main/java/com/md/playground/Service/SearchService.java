package com.md.playground.Service;

import com.md.playground.entity.Mnemonic;

import java.util.List;

public interface SearchService {
    List<Mnemonic> searchForMnemonics(String searchCriteria);
}
