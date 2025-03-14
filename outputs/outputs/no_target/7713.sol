pragma solidity ^0.8.0;
contract Foo {
    function setX(int x) public pure returns (bool res) {
        res = x < 0;
    }
}
