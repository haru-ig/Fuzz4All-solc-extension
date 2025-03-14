pragma solidity ^0.8.0;
contract Array4Mut {
   bytes32 public bytesKey;
   uint public bytesVal;
   uint public integerVal;
   uint256 public two;
   address[] public array2;
   mapping (bytes32=>uint256)bytesArr;
   mapping (address=>uint256)mappingVal;
   mapping (address=>bytes32)public mapping1;
   mapping (uint256=>uint256)mapping1x;
}
contract AccessMemoryMut {
   bytes32 bytesKey;
   uint public bytesVal;
   uint256 public two;
   mapping (address=>uint256)mappingVal;
   mapping (bytes32=>uint)mapping2;
}
