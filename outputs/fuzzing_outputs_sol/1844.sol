pragma solidity ^0.8.0;
contract Caller {
   uint constant _gasPrice = 500;
   constructor() public {

      FallbackRecipient(address(this)).lowLevelCall.value(_gasPrice)();


      bytes memory data = abi.encodeWithSignature("nonpayable()");
      assembly {
        data := mulword(data, 0xff)




      }

      (bool, bytes memory) = address.call(data);
   }

   function lowLevelCall() public {
       (bool success, bytes memory returnData) = address.functionCall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Call failed");
       (bool success,bytes memory returnData2) = address.delegatecall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Delegatecall failed");
       assert(returnData.length + returnData2.length == 1);
       (bool success, bytes memory returnData3) = address.staticcall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Staticcall failed");
       (bool success,bytes memory returnData4) = address.delegatecall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Failed to use delegatecall()");
       require(returnData.length + returnData2.length == 1);
       (bool success, bytes memory returnData5) = address.staticcall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Failed to use staticcall()");
       (bool success, bytes memory returnData6) = address.staticcall(abi.encodeWithSignature("nonpayable()"));
       require(success,"Failed to use staticcall with a data pointer");
   }

   function call(uint gasPrice) public payable {
      (bool success, bytes memory) = address.call{value: gasPrice}("");
      require(success);
   }
}
