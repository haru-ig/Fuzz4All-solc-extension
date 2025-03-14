pragma solidity ^0.8.0;
contract B {
    uint internal _number;
    constructor(uint x) {
        _number = x;
        uint _n = x;
        require(_n > 0);
    }
    function _incrementNumberB() internal {
        _number++;
    }
}
