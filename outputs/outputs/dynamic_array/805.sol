pragma solidity ^0.8.0;
contract Test {
    function a () nonreentrant public returns(uint) { return 0; }
    function b () public nonreentrant returns(uint) { return 0; }
}
