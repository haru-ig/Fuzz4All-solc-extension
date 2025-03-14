pragma solidity ^0.8.0;
contract MutateBigNeg1027 {
    uint256 private constant DECIMAL_BITS = 2;
    uint256 private constant BASE = 10;
    uint256 private constant EXPONENT_BASE = 4194327;
    uint256 private constant EXPONENT_MASK = 2047;

    struct Fraction {
        uint256 numerator;
        uint256 denominator;
    }

    function calculateFraction(uint256 numerator, uint256 denominator)
        pure
        returns (Fraction memory)
    {
        require(denominator!= 0, "zero denominator");
        require(numerator == 0 || denominator == numerator, "not a multiple");
        require(numerator!= uint256(- numerator), "negative");




        uint256 exponent = BASE ** (2 ** (BASE - 1) / denominator);


        exponent -= 4194327;

        uint256 sign = (numerator < 0)? -1 : 1;
        numerator *= sign;
        denominator *= sign;

        uint256 mantissa = numerator / denominator;
        mantissa *= 2 ** denominator * (2 ** DECIMAL_BITS / denominator);

        uint256 exponentAndMantissaAsUint =
            (((uint256(exponent) << 128) | denominator) >> 127) &
            BASE ** 2047;

        require(
            mantissa >> DECIMAL_BITS ==
            ((exponentAndMantissaAsUint &
            (uint256(BASE) << - DECIMAL_BITS)) >> - DECIMAL_BITS),
            "incorrect mantissa"
        );



        fractionToFrac(fraction{
            numerator: numerator * sign,
            denominator: denominator * sign,
        });
    }

    struct fraction {
        uint256 numerator;
        uint256 denominator;
    }

    function fractionToFraction(Fraction memory a)
        pure
        returns (Fraction memory b)
    {
        return fraction{
            numerator: a.numerator,
            denominator: a.denominator,
        };
    }
}
