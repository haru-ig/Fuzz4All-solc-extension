pragma solidity ^0.8.0;
contract Caller {
   address public a;

   function Caller(
     address _a
  ) public {
     a = _a;
   }

   function sendAndReturn() public returns(bytes memory) {
     return a.call{value:1 ether}("");
   }
}






contract TestFallback {
    function sendAndReturn() public returns(bytes memory) {
        bytes memory memorydata = bytes(uint256.toString());
        data;
        uint256;
        data.length;
        return memorydata;
    }
}
