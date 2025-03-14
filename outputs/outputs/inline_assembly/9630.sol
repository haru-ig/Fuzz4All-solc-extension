pragma solidity ^0.8.0;
contract SemanticYulContract {
    mapping (address => uint) public mappingAddress;
    function add() internal returns (address) {
       mappingAddress[msg.sender] += 30;
       return msg.sender;
    }
    function subtract(uint x) internal pure returns(address) {
       uint storage a = mappingAddress[msg.sender];
       a -= uint(x);
       mappingAddress[msg.sender] = a;
       return msg.sender;
    }
    function multiply(uint x) internal pure returns(address) {
       mappingAddress[msg.sender] *= 20;
       return msg.sender;
    }
    function divide(uint x) internal pure returns(address) {
       mappingAddress[msg.sender] /= 20;
       return msg.sender;
    }
    function power(uint x) internal pure returns(address) {
       mappingAddress[msg.sender] *= 20;
       return msg.sender;
    }
    constructor() public {
       mappingAddress[msg.sender] = 30;
    }
    function balanceOf() public view returns (uint) {
       address v;
       assembly {
        v := 100
       }
       return mappingAddress[v];
    }
  }
