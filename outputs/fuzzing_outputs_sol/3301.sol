pragma solidity ^0.8.0;
contract SomeContract {
  mapping (string => uint) private map;
function() external {
    map["foo"] += 100;
  }
}
