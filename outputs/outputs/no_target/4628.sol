pragma solidity ^0.8.0;
contract B {
    uint256 private constant constantX = 1;
    constructor() {}
    function f() public virtual pure {
        if (true & 1 ^ 2) {
           uint256 x = 1;
        }
        (1, 1)[10==1][1000 < 1000];
        (1, 1)[constantX == 1];
        (1, 1)[constantX < 1];
        require(1);
        unchecked {
          uint256 x;
        }
    }
}
