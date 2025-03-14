pragma solidity ^0.8.0;
contract C {
    uint256 private i;

    function g() public {
        i *= 2;
    }

    function h() public {
        i *= 2;
        i *= 2;
    }

    function j() public {
        i -= 1;
        i -= 1;
    }
}
