pragma solidity ^0.8.0;
contract Caller {

  function callEoa() public {
    self.throwEoa();
  }


  function payEoa(uint x, uint y) public payable {
    self.throwEoa();
  }


  function throwEoa() public {
    return self.payEoa(1, 2);
  }
}
