pragma solidity ^0.8.0;
contract Counter {
    uint public constant a = 2;
    uint public v;
    constructor(uint _v) {
        v = _v;
    }
    function increment() public {
        i += a;
    }
}
