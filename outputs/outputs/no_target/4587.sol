pragma solidity ^0.8.0;
contract C is A, B
{
    function f() public pure virtual returns(uint) {
        return f();
    }
}
