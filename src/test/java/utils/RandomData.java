package utils;

import net.datafaker.Faker;

import java.time.Instant;
import java.time.temporal.ChronoUnit;

public class RandomData {
    static Instant instant = Instant.now();

    public static String randomFirstName() {
        Faker fake = new Faker();
        return fake.name().firstName();
    }

    public static String randomLastName() {
        Faker fake = new Faker();
        return fake.name().lastName();
    }

    public static String randomPrice() {
        Faker fake = new Faker();
        return fake.commerce().price(1000, 10000);
    }

    public static String randomCheckin() {
        Faker fake = new Faker();
        return fake.timeAndDate().between(instant, instant.plus(1, ChronoUnit.DAYS), "YYYY-MM-dd");
    }

    public static String randomCheCkout() {
        Faker fake = new Faker();
        return fake.timeAndDate().between(instant, instant.plus(20, ChronoUnit.DAYS), "YYYY-MM-dd");
    }
}
