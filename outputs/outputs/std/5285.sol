pragma solidity ^0.8.0;
contract MyContract {
    uint256 public amount = 0;

    function add(uint256 x) public {
        amount += x;
    }
}
