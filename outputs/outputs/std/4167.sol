pragma solidity ^0.8.0;
contract Array40{
  uint256 memoryOfArrays;
}
contract ArrayS{
  string[] memoryOfArrays;
}
contract ArrayT{
  uint32[][] memoryOfArrays;
}
contract Array_String3 {
  function() external payable {}
  function testStringArray() public view returns (uint32[], uint32[], uint32[]) {
    uint32[] memoryOfArrays;
    uint32[] memoryOfBooleans;
    uint32[] memoryOfBytes;
    uint32[] memoryOfStrings;
    uint32[] memoryOfNulls;

    memoryOfArrays.push(1);
    memoryOfBooleans.push(2);
    memoryOfBytes.push(3);
    memoryOfStrings.push(4);
    memoryOfNulls.push(5);

    return (memoryOfArrays, memoryOfBooleans, memoryOfBytes);
  }
}
contract Array_String4 {
  uint256[] memoryOfArrays;
  uint256[] memoryOfBooleans;
  uint256[] memoryOfBytes;
  uint256[] memoryOfNulls;
  uint256[] memoryOfUndefineds;
  uint256[] memoryOfStrings;
  address[] memoryOfStrings2;
   uint256[] memoryOfNullBytes;

    function() external payable {}
    function testStringArray() public view returns (uint32[], uint32[], uint32[], uint256[]) {
        uint256[] memoryOfArrays;
        uint256[] memoryOfBooleans;
        uint256[] memoryOfBytes;
        uint256[] memoryOfNulls;
        uint256[] memoryOfUndefineds;
       uint256[] memoryOfStrings;
        uint256[] memoryOfNullBytes;
       uint256[] memoryOfStrings2;
        memoryOfArrays.push(1);
        memoryOfBooleans.push(2);
        memoryOfBytes.push(3);
        memoryOfNulls.push(4);
        memoryOfUndefineds.push(5);
        memoryOfNullBytes.push(0xa);

         memoryOfStrings.push(1);



      return (memoryOfArrays, memoryOfBooleans, memoryOfBytes, memoryOfNulls, memoryOfUndefineds, memoryOfNullBytes,memoryOfStrings, memoryOfStrings2);
    }
}
contract Array_String5 {
  uint32[] memoryOfArrays;
  uint32[] memoryOfBooleans;
  uint32[] memoryOfBytes;
  uint32[] memoryOf
