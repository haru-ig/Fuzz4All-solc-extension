pragma solidity ^0.8.0;
contract Foo {
    function f() virtual external returns (uint256) {
    uint256 a = 0;
    a = a >> 255;
    require(a == 0x0000000000000000000000000000000000000000000000000000000000000);
    return a;
    }
}
