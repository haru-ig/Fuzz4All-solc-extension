pragma solidity ^0.8.0;
contract Comp36{
uint32 Constant a= 5;
constructor(uint32 _a){
    a = _a;
}
function increaseThem(uint32 _b){
    a = a + _b;
}
function decreaseThem(uint32 _b){
    a = a - _b;
}
}
