pragma solidity ^0.8.0;
contract Test is ReentrancyGuard {
    bool public value;
    constructor() {
        value = Test.value();
    }
    function value() public view returns (bool) {
        revert();
    }
}
