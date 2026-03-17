package finalproject.poo.model;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Entity
@DiscriminatorValue("CLIENT")
@NoArgsConstructor
@SuperBuilder
public class Client extends User{

    @Override
    public boolean isAdmin() {
        return false;
    }
}
