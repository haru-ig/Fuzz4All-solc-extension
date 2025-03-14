pragma solidity ^0.8.0;
contract Caller {
constructor() public {
  assembly { 5 := calldataload(0) }
}
function f() external payable returns (bool) {
require(tx.origin == msg.sender, "Failure: Invalid contract");
return false;
}
}

pragma solidity ^0.8.0;
contract Caller {
constructor() public {
require(bytes(uint256(address(this)))!= "0x00", "Failure: Invalid contract");
}
function f() external payable returns (bool) {
return false;
}
}
