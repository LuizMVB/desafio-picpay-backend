package br.com.picpay.simplificado.desafio_picpay_backend.controller;

import br.com.picpay.simplificado.desafio_picpay_backend.api.UserApi;
import br.com.picpay.simplificado.desafio_picpay_backend.model.LoginDTO;
import br.com.picpay.simplificado.desafio_picpay_backend.model.UserDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class UserController implements UserApi {

    @Override
    public ResponseEntity<UserDTO> create(LoginDTO loginDTO) {
        return ResponseEntity.ok(new UserDTO()
                .id(123L)
                .username("fulano"));
    }
}
