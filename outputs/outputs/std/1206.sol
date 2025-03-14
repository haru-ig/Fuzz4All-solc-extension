pragma solidity ^0.8.0;
contract E5 {
   function mutate(int _int) public pure {
      uint8 _x = 1;
   }
   function modint(int _int) public pure returns (int) {
      uint8 _x = 1;
         if (_int < 0) {
        _int = 0;
        _x = _x + 2;
       } else
        _x = _x + 2;
    return _int - 1;
   }
}

   contract A5 {
   uint8[2] public uintArray;
   function getArraySize() external view returns (uint8);
   function getArray() external view returns (uint8[2]);
   function getArrayPointer() public returns (uint8[2]);
   constructor() public {
      uintArray[0] = 0;
      uintArray[1] = -1;
   }
   function setArray(uint8[2] memory a) public {
      uintArray = a;
   }
   function incrementArray() public {
      uintArray[0] = uintArray[0] + 1;
      uintArray[1] = uintArray[1] - 1;
   }
   function decrementArray() public {
      uintArray[0] = uintArray[0] + 1;
      uintArray[1] = uintArray[1] - 1;
   }
   function minArray() public returns (uint8);
   function maxArray() public returns (uint8);
   function addTwoArray() public returns (uint);
   function subtractTwoArray() public returns (uint);
   function multiplyThreeArray() public returns (uint);
   function divideFourArray() public;
   function printArray() public view {
      uint i;
      for (i = 0; i < uintArray.length; i = i + 1) {
         (,uint8 a)
        emit printa(a);
      }
   }
    function printa(uint8 a) public view {
      assembly {

        let b := mload(add(a, 0x20))
