pragma solidity ^0.8.0;
contract Mutate {
   uint public a;
   uint256 public integer;
   bytes32 public b;
   mapping (bytes32=>uint256)array;
   address[] public array2;
   mapping (address=>uint256)mapping1;
   struct Struct
   {
       mapping (address=>uint)mapping2;
       mapping (address=>bytes32)mapping3;
   }
   address staticAddress;
   address [] public list;
   struct List
   {
       address [] array;
   }
   address public addr1;
   mapping (address=>uint)mapping2;
}
contract MutateArr {
address public addressArr;
address [] public addressArr2;
}
