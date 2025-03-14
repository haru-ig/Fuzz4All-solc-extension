pragma solidity ^0.8.0;
contract Multiprecision {
    using Convert for int;
    struct Float128 {
        uint256 mantissa;
        uint8  exponent;
    }

    Float128 compute(Float128 a, Float128 b) public pure returns (Float128) {
        Float128 product;

        uint256 expPartA = mul(a.mantissa, exp(b.mantissa));

        uint256 expPartB = b.exponent;

        while (expPartB!= 0) {
            if ((expPartB & 1)!= 0) {
                expPartA *= 2;
            }

            expPartB = divFloor(expPartB, 2);
        }

        uint256 mantissaA = mul(expPartA, a.exponent) & INFINITY;

        if (mantissaA >= a.mantissa) {
            mantissaA -= a.mantissa;
        }

        product.mantissa = mantissaA;
        product.exponent = add(a.exponent, expPartB);

        return product;
    }
}

contract Array {
    using Multiprecision for Multiprecision.Float128;
    int8[] memory intArr;
    uint8[] memory byteArr;

    struct Float128 {
        uint256 mantissa;
        uint8  exponent;
    }

    Float128 compute(Float128 a, Float128 b) public pure returns (Float128) {
        Float128 product;

        uint256 expPartA = mul(a.mantissa, exp(b.mantissa));

        uint256 expPartB = b.exponent;

        while (expPartB!= 0) {
            if ((expPartB & 1)!= 0) {
                expPartA *= 2;
            }

            expPartB = divFloor(expPartB, 2);
        }

        uint256 mantissaA = mul(expPartA, a.exponent) & INFINITY;

        if (mantissaA >= a.mantissa) {
            mantissaA -= a.mantissa;
        }

        product.mantissa = mantissaA;
        product.exponent = add(a.exponent, expPartB);

        return product;
    }


    function intFromStr(string memory a) internal pure returns (int) {
        return intArr[index(a)];
    }

    function intFromBytes(bytes32 a) internal pure returns (int) {
        return intArr[index(a)];
    }

    function bytesFromInt(int memory a) public pure returns (bytes32) {
        return byteArr[index(intArr[a])];
    }
