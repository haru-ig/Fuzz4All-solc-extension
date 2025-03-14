pragma solidity ^0.8.0;
contract Test {
    uint256 public value;

    function set(uint256 x) public{
        value = x;
        emit Set(x);
    }
}
