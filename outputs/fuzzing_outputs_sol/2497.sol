pragma solidity ^0.8.0;
contract Caller {
  address payable dest;
  uint amount;
  uint x;

  constructor(address payable dest_, uint amount_) {
    require(dest_!= address(0));
    dest = dest_;
    amount = amount_;

    EmitSelfDestruct();
  }
  function() public payable {
    dest.transfer(amount);
  }
}
