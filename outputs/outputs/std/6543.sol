pragma solidity ^0.8.0;
contract Mutate {
    uint256 public nonConstantVal;
    uint256 public constantVal = 5;
    uint256 public constantBytes;
    uint256 public staticVal = 3;
    uint256 public staticBytes;
}

contract Mute {
    mapping (address => uint8) public nonConstantVals;
}
