pragma solidity ^0.8.0;
contract Foo {
    function g() public returns(uint){
        (uint x, uint) = (10, 7);
    }
}
