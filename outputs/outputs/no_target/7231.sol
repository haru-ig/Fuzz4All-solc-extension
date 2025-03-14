pragma solidity ^0.8.0;
contract Duplicator {
    modifier onlyThis() {
        require(msg.sender == address(this));
        _;
    }
    uint private index = 0;
    function duplicate() public onlyThis {
      while(true) {
        Malicious(index++);
      }
    }
}
