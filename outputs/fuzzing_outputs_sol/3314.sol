pragma solidity ^0.8.0;
contract Caller {

    uint public value = 10;
    uint public x = 0;

    function callValue() public payable {
        value = 20;
        x = 7;
    }

    function lowLevelValue() public {
        x += 1;
    }
    receive() external payable {}
    fallback() external payable {
        x -= 1;
    }
}
