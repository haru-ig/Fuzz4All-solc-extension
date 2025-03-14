pragma solidity ^0.8.0;
contract Comp32 {
uint32 a;
uint32 b;
constructor(uint32 _a, uint32 _b) {
  a = _a;
  b = _b;
}
function multiply(uint32 _b) public {
    uint32 result = a + b;
	b = _b;
	return result;
}
}
contract Comp33 {
uint32 a;
uint32 b;
constructor(uint32 _a, uint32 _b) {
  a = _a;
  b = _b;
}
function multiply(uint32 _b) public {
    uint32 result = a * b;
    a = _a;
    b = _b;
  	return result;
}
}
