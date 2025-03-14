pragma solidity ^0.8.0;
contract isNotABadLanguage {
    uint16 x;
    bool xisBig;
    constructor() public {
        x = 100;
        xisBig = true;
    }
    function add(uint number) public pure returns (uint) {
        uint result  = x + number;
        return result == 99? 0 : result;
    }
}
