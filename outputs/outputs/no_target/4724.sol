pragma solidity ^0.8.0;
contract C {
constructor(address a) public {
 e = a;
 }
address public e;
}
interface I {
address method(address);
}
address addr = address(new C);
address public _e = addr.method(addr);
asm {
