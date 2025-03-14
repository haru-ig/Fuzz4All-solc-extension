pragma solidity ^0.8.0;
contract D{
    function setNamelength() public {
       uint256 i = 12;
       uint constant a = 1;
       uint8 v8 = 2;
       uint16 v16 = 3;
       uint32 v32 = 4;
       uint64 v64 = 5;
       uint128 v128 = 6;
       uint256 v256 = 7;
       bytes32 v = 8;
       while(i < 11) {

       }
       bytes memory b = "1";
       bytes memory c = "2";
       bytes memory d = "3";
       uint128 b64 = 9;
       bytes memory x = bytes(b64 < 100? b64.toString() : "1");
       bytes memory y = bytes(v64 < 100? v64.toString() : "1");
       bytes memory y8 = bytes(v8 < 100? v8.toString() : "1");
       bytes memory y16 = bytes(v16 < 100? v16.toString() : "1");
       bytes memory y32 = bytes(v32 < 100? v32.toString() : "1");
       bytes memory y64 = bytes(v64 < 100? v64.toString() : "1");
       bytes32 m = bytes(v128 < 100? v128.toString() : "1");
    }
    function clearNameLength() public {
       uint256 x = 1;
       namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}
