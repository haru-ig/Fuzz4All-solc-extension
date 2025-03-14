pragma solidity ^0.8.0;

modifier onlyOwner {
if (msg.sender == owner) _;
}
interface A {
function f({uint n}) external returns(uint);
}
A contractA;
address public owner;
constructor() public {
owner = msg.sender;
contractA = A(address(0));
}
function callFunctionInA() public onlyOwner {
uint m = contractA.f({ n: 10 });
assertEq(m, 10);
}
}
