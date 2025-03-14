pragma solidity ^0.8.0;
constant C = 200;
contract Semantic00001 {
    uint256 a;
    function f() public pure {
        a;
    }
    function f2() public pure {
        a;
        (a - 143) >> 0;
        (C * 100) / (-1 * 23);
        a;
        1230 % 4;
        unchecked {
            (a + 150) >> 0;
        }
        unchecked {
            (a / 10) / (45 + 30);
        }
    }
}
