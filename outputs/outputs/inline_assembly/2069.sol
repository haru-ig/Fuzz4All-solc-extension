pragma solidity ^0.8.0;
contract MyLib {
function myMethod(uint256 parama, uint256 paramb) public {
MyMath.add(parama, paramb, 2);
}
}
contract testCall {
function callMyLib() public {
MyLib myLib = new MyLib();
myLib.myMethod(5, 5);
}
}
