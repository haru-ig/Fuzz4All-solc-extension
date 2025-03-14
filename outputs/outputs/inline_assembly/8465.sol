pragma solidity ^0.8.0;
contract SolveModul
{
   uint[] public numbers;
   uint _value;
   constructor(uint a) public {
      numbers = new uint[](9);
      _value = 21;
   }
   function test222() public pure returns (uint) {
      return _value + 9;
   }
}

pragma solidity ^0.8.0;
contract SolveModul
{
   uint private constant stringConcatLength = 9;
   string concat;
   constructor(string memory x) public {
      concat = x;
   }
   function test222() public pure returns (uint){
      uint length = stringConcatLength;
      for(uint i = length - 1; i >= 0 ; i--){
         concat[i] = byte(uint(uint8(concat[i]))  > 9? uint8(uint8(concat[i]))-7:uint8(uint8(concat[i])));
      }
      return uint(concat);
   }

}
