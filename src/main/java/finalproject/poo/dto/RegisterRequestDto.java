package finalproject.poo.dto;

public record RegisterRequestDto(
        String name,
        String email,
        String password,
        boolean isAdmin
) {}
