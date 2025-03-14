pragma solidity ^0.8.0;
contract Intra {
   address public contractAddress;

   function Intra() {
    contractAddress = address(0xf21042634666A21cE6D691353157A6542504215e);
   }

   function testMethod() public pure {

    assembly {
     let localVariable := 0
     let localVariable1 := 0

     switch localVariable {
       case 0 {
       }
       case 1024 {
       }
       case 32768 {
       }
       default {
        localVariable1 := 1
        localVariable := calldatacopy(0, 0, calldatasize())
       }
      }
    }
   }
}
