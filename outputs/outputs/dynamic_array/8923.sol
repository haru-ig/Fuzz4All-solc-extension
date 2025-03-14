pragma solidity ^0.8.0;
interface I {
  function returnArrayWithArrays() -> uint[][3]
    pure
    returns(uint, uint, uint, uint);
}
interface II {
  function returnArrayWithNestedArrays() -> [Address][3]
    pure
    returns(address,address,address, address, address, address, address);
}
contract Simple {

   function func(uint... arr) public returns (uint) {
     return keccak256(abi.encodePacked(arr));
   }


   function func2(uint arr1[2], uint arr2[3], uint arr3[3])
     public returns (uint) {
       return keccak256(abi.encodePacked(arr1, arr2, arr3));
     }


   function func3(uint arr1, uint[] memory arr2)
     public returns (bytes memory) {
       return abi.encodePacked(uint8(arr1), arr2);
     }
 }
contract Complex {

   function returnArrayOfArrays() public view returns (uint[][3],uint[]) {
     uint[][1] memory arr1 = new uint[](2);


     struct PointMemory {address x; address y;} memory p1;

     struct LineMemory {address a; address b;} memory l1;











     arr1[0] = uint[](2,1,2);


     arr1[1] = [uint8(0),uint8(1), uint
