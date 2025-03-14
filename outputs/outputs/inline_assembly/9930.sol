pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint256 v) public {
        value2 = value;
        address x = x();
        x.transfer(msg.sender, 100);
    }
    function x() public pure {
        return address(this);
    }
}
contract B {
    uint256 value;
    constructor() {
        value = 4;
    }
    function withdraw() public {
      address payable x = x();
      uint256 w;
      x.call{value: 100}(abi.encodeWithSelector(x.transfer.selector, 34));
      w += x.balance;
      if (address(x) == address(this)) {

      } else {

      }
    }
    function x() public view returns (address payable) {
      if (tx.origin == msg.sender) {
        return payable(0);
      } else {
        return payable(address(this));
      }
    }
}
