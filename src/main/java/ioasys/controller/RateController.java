package ioasys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ioasys.model.Rate;
import ioasys.service.RateService;

@RestController
@RequestMapping("/rate")
public class RateController {

	@Autowired
	RateService rateService;

	@PostMapping()
	public ResponseEntity<Rate> save(@RequestBody Rate rate) {
		return ResponseEntity.ok().body(rateService.save(rate));
	}
}
