pragma solidity ^0.8.0;
contract Mutant4
{
   bool public b;
   constructor() public {
      uint a = 42;
      b = (42 < address(this).balance);
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant5
{

   address public contractMutant5Address;

   constructor() public {
      contractMutant5Address = 0xfCcf345b7a12C5B2472404C39469a8C3cDbB219b;
   }
   receive() external payable {}
}
