pragma solidity ^0.8.0;
contract Modifications2 {
    uint256 a;
    uint256 b;
    constructor(uint256 _x) public {
        a = 1;
        b = 1;
    }

    function f() public returns (uint256) {
        uint256 x = a + b;
        b = 1;
        a = 1;
        return x + x + x;
    }

    function g() public returns (uint256) {
        uint256 a = 2;
        uint256 _b = a;
        x = a + _b;
        b = 1;
        a = 1;
        return x + x + x;
    }

    function h() public returns (uint256) {
        uint256 a = 5;
        uint256 b = 6;
        uint256 x = a + b;
        a = a + b;
        b = 1 + 2;
        return x - b + a;
    }

    function m() public {
        uint256 a = 9;
        uint256 b = 7;
        uint256 x = a + b;
        a = a + b;
        b = 10;
        a = a + b;
        b = b + 1;
        return a - b - b + b;
    }
}

pragma solidity ^0.8.0;
contract Modifications_SEM {
    uint256 a;
    uint256 b;
    constructor() public {
        a = 1;
        b = 1;
    }

    function f() public returns (uint256) {
        uint256 x = a;
        return x < x? x / x : (x - a) / (x - b) + x + x;
    }
}

pragma solidity ^0.8.0;
contract CheckAndModifications {
    constructor() public {
        a = 2;
        b = 3;
    }

    function f() public returns (uint256) {
        uint256 x = a - 1;
        return x == 8 && b < x && x == a || (8 < a && a < x + 8)
          ? x + b
            : b + x + x + x;
    }
}
