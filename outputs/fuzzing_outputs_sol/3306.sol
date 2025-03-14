pragma solidity ^0.8.0;
contract Mutator {
    uint public x;
    function simpleContract() public payable {
        x += 2;
    }
    function lowLevel() public {
        x += 5;
    }
    receive() external payable {
        msg.data.length++;
    }
    fallback() external payable {
        x += 10;
    }
}
