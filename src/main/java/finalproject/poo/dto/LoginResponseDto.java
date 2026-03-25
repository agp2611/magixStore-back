package finalproject.poo.dto;

public record LoginResponseDto(
        Long id,
        String name,
        boolean isAdmin,
        String token
) {}
