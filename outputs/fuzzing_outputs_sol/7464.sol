pragma solidity ^0.8.0;
contract Caller {
    uint256 constant MAX_VALUE = 20;

    address public contractAddr;
    uint256 public x;

    constructor(uint256 x) {
      contractAddr = msg.sender;
      this.x = x;
    }

    function get() public view returns(uint256) {
        if (msg.sender == contractAddr) {
            return x + msg.value;
        } else {
            return MAX_VALUE;
        }
    }

    function callToContract() public payable {
        contractAddr.call{value : msg.value}("");
    }
}
