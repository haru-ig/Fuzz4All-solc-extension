pragma solidity ^0.8.0;
contract Incrementer {
    uint internal _increment;
    constructor() {
        _increment = 1;
    }
    function increment() public pure returns(uint) {
        _increment += 1;
        return _increment;
    }
}
