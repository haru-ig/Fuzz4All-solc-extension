pragma solidity ^0.8.0;
interface I
{
function get () returns (int);
}
contract C
{
uint[] internal a;
uint b;
function f()
{
a.push(b);
}
function set (int s) public
{
emit MyFunction(s);
}
event MyFunction(int num);
}
contract Test
{
function test(address x, uint y)
{
I a=x;
a.f();
a.set(y);
}
}
