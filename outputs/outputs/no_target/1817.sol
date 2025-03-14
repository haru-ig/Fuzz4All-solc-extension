pragma solidity ^0.8.0;
contract Mutate8_2 {
    uint public _1;
    uint public _2;
    constructor() public {
        uint numerator = 1;
        uint denominator = 0;
        uint previousDenominator = denominator + 1;
        while(previousDenominator <= denominator) {
            previousDenominator = denominator;
            denominator *= 2;
            numerator += 1;
        }
      _1 = previousDenominator;
      _2 = numerator;
    }
    modifier onlyAdd {
        _1 += 1;
        _2 -= 1;
        _;
    }
}
