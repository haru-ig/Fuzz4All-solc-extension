pragma solidity ^0.8.0;
contract YulContract {
   uint internal contractCounter = 1;
   function modifier subContractOnly() {
       contractCounter -= 1;
       _;
   }
   function subContract() public subContractOnly {
       contractCounter = (subContract() + 1);
   }
}
contract MainlineContract{
    function mainlineContract() public {

        YulContract myObject = new YulContract();
        myObject.subContract();
        myObject.subContract();
    }
}
