pragma solidity ^0.8.0;
contract D {
constructor(address a) public {
e = a;
}
address public e;
function modifier(uint x) {
assert(x==1 || x==2 || x==3 || x==4);
return;
}
}
