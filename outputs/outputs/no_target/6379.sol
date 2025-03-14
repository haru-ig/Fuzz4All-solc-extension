pragma solidity ^0.8.0;
contract o_1_1 {
  function f(uint8 a) public returns (uint256) {
     if( a > 1){
        uint b = a + 2;
        uint modded = ((b%2)*(b/2+(b % 2 == 0)));
        return 2 % 2;
        }  else
        return 1;
  }
}
contract o_1_2 {
  function f(uint8 a) public returns (uint256) {
     if( a > 1){
        uint  v = 20;
        uint modded = 1-0;
        return 2 % 2;
        }  else
        return 1;
  }
}
contract o_1_3 {
  function f(uint8 a) public returns (uint256) {
     if( a > 1){
        uint b = a % 2;
        uint modded = b%2;
        return 2 % 2;
        }  else
        return 1;
  }
}
contract o_1_4 {
  function f(uint8 a) public returns (uint256) {
     uint160 int16 = 1; uint8 int8 = 0;
     uint num = a;
     uint256 s = uint256(int16+int8);
     s = s == 3;
     return num%2;
  }
}
contract o_1_5 {
  function f(uint8 a) public returns (uint256) {
     uint160 int16 = 1; uint8 a16 = 0;
     uint num = a;
     uint256 s = uint256(int16+uint8(a16));
     uint m = num%2;
     s = s>0;
     return m;
  }
}
contract o_1_6 {

   function f(uint8 a) public returns (uint256) {
     uint160 int16 = 1; uint8 int8 = 0;
     uint num = a;
     uint256 s = uint256(int16+int8);
     s = uint256(s==6);
     return num%2;
  }
}
contract o_1_7 {
  function f(uint8 a) public returns (uint256) {
     uint160 int16 = 1; uint8 a16 = 0x80;
     uint num = a;
     uint256 s;
     uint8 m = num%2;
     s =
