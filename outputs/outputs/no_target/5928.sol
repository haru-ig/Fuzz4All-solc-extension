pragma solidity ^0.8.0;
contract A {
    function f(uint128 x) public pure {
        x = 1;
        x = 2;
    }
}
contract A {
    function f0(uint256 x) public pure {
        x = x / 2;
        x = x - 2;
    }
}

pragma solidity ^0.8.0;
contract A {
    function f0(uint256 x) public pure {
        uint256 y = x / 2;
        uint256 w;
        w = +x - x + +y - +-x + y;
    }
}
