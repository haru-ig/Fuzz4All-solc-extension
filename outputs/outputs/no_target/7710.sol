pragma solidity ^0.8.0;
contract Foo {
    function bar() public pure returns (int x_) {
        (int x, int y) = (1, 2);
        x -= y;
        return 0;
    }
    function barmut() public pure returns (int x_) {
        (int x, int y) = (1, 2);
        x -= y;
        return 0;
    }
}

contract Foo {
    function bar() public pure returns (int x_) {
        (int x, int y) = (1, 2);
        x = y;
        return 0;
    }
}
