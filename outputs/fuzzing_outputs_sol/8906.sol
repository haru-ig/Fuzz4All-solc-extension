pragma solidity ^0.8.0;
contract Caller {
   bytes1 public constant NAME = "Hello, world!";
   receive() external payable {
       uint count;
       for (count = 0; ; count++) {
        assembly {
            revert(0, add(count, 32))
        }
       }
   }
   uint256 constant MAX_GAS = 1000000;
   function () external payable {
      uint count;
      for (count = 0; ; count++) {
        assembly {
            revert(10, add(count, 32))
        }
      }
   }
   function pay(uint gas) public payable {
      require(gas <= MAX_GAS, "Too many Ether sent!");
      require(msg.value + gas < gasPrice(), "Insufficient Ether!");
      selfdestruct(owner());
   }
   function owner() public view returns (address) {
      return msg.sender;
   }
   function gasPrice() public view returns (uint) {
      return 10 ether;
   }
}
