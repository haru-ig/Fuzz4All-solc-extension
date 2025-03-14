pragma solidity ^0.8.0;
library LibraryForManipulatingMultiprecision {
    struct Multiprecision {
        uint _integerPart;
        uint _fractionPart;
    }

    function decimalPartOf(Multiprecision memory) public view returns (uint) {
        uint decimalPart = (2 ** 256) - 1;
        return decimalPart ^ (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF & (decimalPart & ((uint256(1) << (256 - 128) + uint256(10 ** 257)) - 1)));
    }

    function integerPartOf(Multiprecision storage memory) public view returns (uint) {
        return memory._integerPart;
    }
    function decimalPartOf(Multiprecision storage memory) public view returns (uint) {
        return memory._fractionPart;
    }
    function convertIntegerPartToMultiprecision(uint num, uint numMaxIntegerPart) public pure returns (Multiprecision memory) {
        require(num <= numMaxIntegerPart, "overflow");
        return Multiprecision({_integerPart: num, _fractionPart: 0});
    }
    function convertFractionPartToMultiprecision(uint num, uint numMaxFractionPart) public pure returns (Multiprecision memory) {
        require(num <= numMaxFractionPart, "overflow");
        return Multiprecision({_integerPart: 0, _fractionPart: num});
    }

    function multiply(Multiprecision memory a, Multiprecision memory b) public pure returns (Multiprecision memory) {
        uint integerPartResult = (a._integerPart * b._integerPart);
        uint fractionPartResult = decimalPartOf(a) + decimalPartOf(b);
        if(fractionPartResult < (2 ** 256) - 1 && fractionPartResult >= (decimalPartOf(a) << 256)) {
            uint resultIntegerPart = integerPartResult >> 256;
            uint resultFractionPart = (fractionPartResult >> 257) - (integerPartResult << 127);
            if(resultIntegerPart < (2 ** 256) - 1 && resultIntegerPart >= (integerPartResult + ((integerPartResult >> 256) << 256)))) {
                return Multiprecision(resultIntegerPart, resultFractionPart);
            }
        }
        return Multiprecision(0, 0);
    }

    function div(Multiprecision memory a, Multiprecision memory b) public pure returns (Multiprecision memory) {
        uint integerPartResult = (a._integerPart / b._integerPart);
        uint fractionPartResult = decimalPartOf(a) - (decimalPartOf(a) * (b._fractionPart >> 257));
        if((decimalPartOf(a) * (b._fractionPart >> 257)) < (2 ** 256) - 1
