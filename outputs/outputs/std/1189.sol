pragma solidity ^0.8.0;
contract B5 {
   function intInt(int index, int _int) public pure returns (bool success) {
       if (-123 == _int) {
        return true;
       } else
        return false;
   }
   function strInt(int _int) public pure returns (int) {
       if (-123 == _int) {
        return -123;
       } else
        return 123;
   }
}
