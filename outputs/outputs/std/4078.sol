pragma solidity ^0.8.0;
contract Array4 {
   uint public a;
   uint256 public integer;
   bytes32 public b;
   mapping (bytes32=>uint256)array;
   address[] public array2;
   mapping (address=>uint256)mapping1;
}

pragma solidity ^0.8.0;
contract AccessMemory {
   bytes32 bytesKey;
   uint bytesVal;
   uint public integerVal;
   uint256 public two;
   mapping (bytes32=>uint256)bytesArr;
   mapping (address=>uint256)mappingVal;
   mapping (bytes32=>uint)mapping2;
   mapping (address=>bytes32)mapping1;
   mapping (uint256=>uint256)mapping1x;
}
