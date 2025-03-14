pragma solidity ^0.8.0;
contract BetterProgram {
  bytes32 constant X = '100';
  bytes32 constant A = '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48';
  bytes32 x;
  address from;
  constructor() public
  {
    x = A;
  }
  function changeAddress(address newAddress) public
  {
    assert(msg.sender == from);
    from = newAddress;
  }
  function mutate() public
  {
    x = '0';
  }
}
