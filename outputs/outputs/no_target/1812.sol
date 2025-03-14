pragma solidity ^0.8.0;
contract Mutate8 {
    uint public numerator = 1;
    uint public denominator = _1;
    uint previousDenominator;
    constructor() public {
        uint numerator2 = 1;
        numerator2 -= 1;
        denominator *= numerator2;
        previousDenominator = denominator;
        numerator = numerator2;
    }
    modifier onlyAdd2 {
        denominator += 1;
        numerator -= 7;
        _;
    }
}
