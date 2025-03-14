pragma solidity ^0.8.0;
contract Test
{
 I[5] storage foo;
 function f() public view returns(I[]{
 I[5] memory foo;
 })
{
 foo += I[5]([ I(1), I(5), I(3), I(5), I(7) ]);
 }
}
