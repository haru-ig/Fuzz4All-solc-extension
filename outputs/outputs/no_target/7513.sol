pragma solidity ^0.8.0;
contract Mutant_existing { uint constant constant1 = 42; function f() external pure {
    bytes memory  calldata a;
    uint b = 10;
    (a,b) = (b, a);
    (a,b) = (b, a);
 } uint constant constant2 = 199; function f() external pure {
    bytes memory  calldata a;
    uint b = 10;
    (a,b) = (b, a);
    (a,b) = (b, a);
 } uint constant constant3 = 1; function f() external pure {
    bytes memory  calldata a;
    uint b = 10;
    (a,b) = (b, a);
    (a,b) = (b, a);
 } uint constant constant4 = 1; function f() external pure {
    bytes memory  calldata a;
    uint b = 10;
    (a,b) = (b, a);
    (a,b) = (b, a);
 } }
