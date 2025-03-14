pragma solidity ^0.8.0;
contract Caller {
    uint256 public value;
    function Call(uint256 amount) public payable {
        uint256 r = amount + 13;
        value = r;
    }
}
