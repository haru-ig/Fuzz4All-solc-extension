pragma solidity ^0.8.0;
contract Equivalent
{






  modifier nonpayable()
   {
      require(msg.value == 0);
      _;
   }

   function modifiedSendEther(uint x, address addr) nonpayable public
   {
      equiv.modifiedSendEther.call{value: x}("");
   }
}
