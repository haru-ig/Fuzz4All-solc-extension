pragma solidity ^0.8.0;
struct C {
   uint[12] f;
   uint[42] y;
}
function test(inout uint[12] storage x)
{
   x[0]++;
}
