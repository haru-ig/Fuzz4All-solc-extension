pragma solidity ^0.8.0;
contract Caller {
  constructor() {}
    function add(uint x, uint y) public returns (uint z) {
        return z = x + y;
    }
    function to(address to) public {
        require(address(this).balance > 0, "Balance too low");
        to.transfer(address(this).balance);
    }
}
