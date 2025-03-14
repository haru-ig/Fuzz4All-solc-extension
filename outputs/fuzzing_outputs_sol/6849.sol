pragma solidity ^0.8.0;
contract Caller {
    address payable payableFallback = payable(address(0));
    event Value(uint value);
    receive() payable external {
        value = 5;
    }
}
