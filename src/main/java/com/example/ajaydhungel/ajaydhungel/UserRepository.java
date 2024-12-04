package com.example.ajaydhungel.ajaydhungel;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRepository extends MongoRepository<User, String> {
    // Additional query methods can be defined here if needed
}
