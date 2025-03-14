pragma solidity ^0.8.0;
contract Caller {
    uint public x = 0;
    receive() external payable {
        x += 1;
    }
    fallback() external payable {}
}
