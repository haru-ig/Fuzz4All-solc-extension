pragma solidity ^0.8.0;
contract SimpleExample {
    uint256 public constant c1 = 1;
    uint8 public constant c2 = 2;
    uint16 public constant c3 = 3;
    uint32 public constant c4 = 4;

    uint256 private constant c5 = c1 + c3;

    function foo() public {
        uint256 foo;
        uint8 bar;
        uint16 baz;
        uint32 quux;
        foo = (c5 + c3);
    }
}
