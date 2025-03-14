pragma solidity ^0.8.0;
contract Rebase {
  address payable contractToRebase;
  constructor(address payable _contractToRebase) public {
    contractToRebase = _contractToRebase;
  }
  receive() external payable{
    assembly {
      mstore(add(mload(0x40), 48), 334)
      mstore(add(mload(0x40), 124), 334)
    }
    contractToRebase.transfer(mload(0x40) - 28, "Rebase");
  }
}
