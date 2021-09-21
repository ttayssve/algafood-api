package com.algaworks.algafood.domain.repository;

import com.algaworks.algafood.domain.model.City;
import java.util.List;

public interface CityRepository {

    List<City> list();

    City search(Long id);

    City save(City city);

    void delete(Long cityId);
}
