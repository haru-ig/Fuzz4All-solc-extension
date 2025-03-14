pragma solidity ^0.8.0;
contract ModifierContract {
    uint x;
    constructor (uint _x) {
        x = _x;
    }

    function foo() external view returns(uint) {
        return x;
    }

    function bar() external {
        x = 1;
    }
}
