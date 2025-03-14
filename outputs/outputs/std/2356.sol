pragma solidity ^0.8.0;
contract Emergency
{
  public uint8 x= 0;
  constructor() {
      x = 1;
      x = 2;
   }
}

pragma solidity ^0.8.0;
contract Mutate
{
  constructor() public payable {}
  function mutate() public payable {
    selfdestruct(address(this));
  }
}

pragma solidity ^0.8.0;
contract ForLoop
{
  contract C {
      uint[] b = new uint[]( 4);

  }
}
