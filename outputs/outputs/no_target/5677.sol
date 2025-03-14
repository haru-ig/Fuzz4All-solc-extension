pragma solidity ^0.8.0;
contract Foo{
    uint public x2;
    function f() public view returns (uint z) {
        z=x2;
    }
    function g() public view returns (uint h) {
        h=x2;
    }
    function f() public {
        x2=2;
    }
}
