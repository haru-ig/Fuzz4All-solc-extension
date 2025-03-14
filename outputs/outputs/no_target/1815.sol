pragma solidity ^0.8.0;
contract Mutate9 {
    uint public _1;
    uint public _2;

    function () external payable onlyAdd {
        uint numerator = 1;
        uint denominator= _1;
        uint previousDenominator = denominator + 1;
        while (numerator <= denominator) {
            previousDenominator = denominator;
            denominator *= _2;
            numerator += 1;
        }
        _1 = previousDenominator;
        _2 = numerator;
    }
}
