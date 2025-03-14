pragma solidity ^0.8.0;
contract Array1 {
   uint public integer;
   uint[8] array;

    function setInteger(uint8 x) public{
        integer = x;
    }

    function getInteger() public view returns (uint8){
        return integer;
    }
}
contract Array2 {
   uint public integer;
   uint[5] array;
}
contract Array3 {
   uint public integer;
   uint[4] array;
}
contract Array5 {
   uint public integer;
   mapping (bytes32=>uint) array;
}
contract Test {
   event SetInteger(uint x);
   event GetInteger();
   event SetArray(uint[] x);
   event GetArray();

   function test() public {
        SetInteger(17);
        EmitGetInteger();
        SetArray([2,3]);
        GetArray();
   }

   function emitGetInteger() public {
       emit GetInteger(integer);
   }

   function emitGetIntegerArray() public {
       EmitGetIntegerArray(integer);
   }

   function emitGetIntegerWithArray() public{
       emit GetIntegerWithArray([0,0]);
   }

   function EmitGetIntegerArray(uint[5] memory x) public {
       x[1] = 2;
   }

   function EmitGetInteger(uint8 x) public {
        EmitGetIntegerArray(x);
        if(x > 28){
           EmitGetIntegerArray([[0]]);
        }
   }

   function EmitGetIntegerWithArray(uint[4,4] memory x) public{
       x[1][1] = 2;
   }

   function GetInteger() public view returns (uint8) {
       emit GetInteger(integer);
   }

   function GetIntegerArray(uint[5] memory array) public view returns (uint[4]) {
        emit GetIntegerArray(array);
   }

   function GetIntegerArray2(uint[3][2] memory multi) public view returns (uint8[]) {
       emit GetIntegerArray2(multi);
   }

   function GetIntegerArray2(uint[4][4] memory multi) public view returns (uint[3][2]) {
       emit GetIntegerArray2(multi);
   }

   function GetIntegerArray2(uint[68] memory multi) public view returns (uint[5]) {
       emit GetIntegerArray2(multi);
   }

   function GetIntegerWithArray(uint[28] memory array) public{
        emit GetIntegerWithArray(array);
   }

   function GetIntegerWithArray2(uint[5] memory array) public{
        emit GetIntegerWithArray2(array);
   }
}
