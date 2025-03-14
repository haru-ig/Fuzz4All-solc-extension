pragma solidity ^0.8.0;
contract Example19 {
    uint256 public x1;
    uint256 public x2;
    function example19() public payable {
        x1 += msg.value;
        x2 += msg.value;
    }
}
