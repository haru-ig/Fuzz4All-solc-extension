pragma solidity ^0.8.0;
contract Example9 {
    uint public foo = 0xdead0000;
    function change() public view {


        foo = 42;
    }
}
