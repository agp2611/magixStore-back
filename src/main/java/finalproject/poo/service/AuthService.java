package finalproject.poo.service;

import finalproject.poo.dto.*;
import finalproject.poo.exception.*;
import finalproject.poo.model.*;
import finalproject.poo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public LoginResponseDto login(LoginRequestDto loginRequest) {
        User user = userRepository.findByEmail(loginRequest.email()).orElseThrow(() -> new UserNotFoundException());

        if(!passwordEncoder.matches(loginRequest.password(), user.getPassword())) {
            throw new InvalidPasswordException();
        }

        return new LoginResponseDto(user.getId(), user.getName(), user.isAdmin());
    }

    public void register(RegisterRequestDto registerRequest) {
        if(userRepository.findByEmail(registerRequest.email()).isPresent()) {
            throw new EmailAlreadyExistsException();
        }

        User newUser;

        if(registerRequest.isAdmin()) {
            newUser = new Admin();
        } else  {
            newUser = new Client();
        }

        newUser.setName(registerRequest.name());
        newUser.setEmail(registerRequest.email());
        newUser.setPassword(passwordEncoder.encode(registerRequest.password()));
        userRepository.save(newUser);

    }
}
