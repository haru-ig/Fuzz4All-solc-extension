pragma solidity ^0.8.0;
contract MixedContactsExample509 {
    function anotherOperation6() public view {
        uint8 test = 0;
        test = 2;
    }
    event ELog(uint128 num);
    function anotherOperation7() external {
        emit ELog(1);
    }
}
