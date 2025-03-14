pragma solidity ^0.8.0;
contract Baz is Baz {
    uint x;


    function f() public view returns(uint) {
        return (int)(-x);
    }
}
