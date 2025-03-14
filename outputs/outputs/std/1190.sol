pragma solidity ^0.8.0;
contract B5 {
   function intInt(int _int) public pure returns (bool success) {
       if (-123 <= _int) {
        return true;
       } else
        return false;
   }
   function stringInt(int _int) public pure returns (string memory) {
       if (-123 <= _int) {
        return "123";
       } else
        return "123";
   }
}
contract B3 {
   function intInt(int index1) public pure returns (bool success) {
       if (-1 <= index1) {
         return true;
       } else {
         return false;
       }
   }
   function stringInt(int _int) public pure returns (string memory) {
       if (-1 <= _int) {
        return "-123";
       } else {
        return "-123";
       }
   }
}

contract MultiDecimalMath {
	using SafeMath for uint256;



	function multiprecisionAdd(uint256 x, uint256 y) public pure returns(uint256 answer) {
