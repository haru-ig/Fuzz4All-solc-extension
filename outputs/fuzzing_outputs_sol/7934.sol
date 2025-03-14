pragma solidity ^0.8.0;
contract Equivalent3
{
    function sendEther(uint x) public payable {}
}

pragma solidity ^0.8.0;
contract Equivalent2
{
    constructor() public {}
    function sendEther(uint x) public payable {}
}
contract Test {

   Equivalent public e;


   constructor() public {

      assembly {

      }
   }

   function create() public returns (Equivalent memory r) {

      Equivalent callResult;

      assembly {

         mstore(0, add(e, 0x20))
      }

      r = callResult;
   }
})
