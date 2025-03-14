pragma solidity ^0.8.0;
contract Test94F3 {
    struct A {
        uint256 array;
    }
    function f() public pure {
        uint256[] memory a;
        h();
    }
    function g() public pure {
        uint256[] memory a;
        c();
    }
    function h() public pure {
        uint256[] memory a;
        uint256 data = 1;
    }
    function i() public pure {
        uint256[] memory a;
        uint256 data = uint128(1, 2);
    }
    function j() public pure {
        uint256[] memory a;
        uint256 data = 1, 1, 1;
    }
    function c() public pure {
        uint256[] memory a;
        uint256 data = 1, 2, 2, 3;
    }
}
