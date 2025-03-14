pragma solidity ^0.8.0;
contract Mutate8 {
    uint public _1;
    uint public _2;
    constructor() public {
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
    modifier onlyAdd {
        _1 += 1;
        _2 -= 7;
        _;
    }
}
