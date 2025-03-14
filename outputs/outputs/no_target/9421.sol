pragma solidity ^0.8.0;
contract SemanticalEquiv36
{
}
contract SemanticalEquiv37
{
}

address A;
address B;
function f(address) { }
function g(address A, address B) { }
address f(address A) { f(B); }
address function g(address A, address B) { f(B); return; }
