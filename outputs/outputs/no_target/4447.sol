pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint256, bool) {
        uint160 r;
        uint256 l;
        bool b;
        assembly {
            r := mul(2, 42)
            l := div(r, 3)
            b := and(r, 3)
        }
        return (0, true);
    }
    function myFunction() public pure returns (uint256 r, bool b) {
        uint256 l;
        bool b;
        assembly {
            r := mul(2, 42)
            b := and(r, 3)
        }
        return (2, true);
    }
    function myFunction() public pure returns (uint256 l) {
        uint256 r;
        bool b;
        assembly {
            r := mul(2, 42)
            b := and(r, 3)
        }
        return 2;
    }
}

contract L {
    function myFunction() public pure returns (uint256 r, bool b) {
        uint160 r;
        uint256 l;
        bool b;
        assembly {
            r := mul(2, 42)
            b := and(r, 3)
        }
        return b;
    }
    function myFunction() public pure returns (uint256 r, uint256 l) {
        uint256 r;
        uint256 l;
        bool b;
        assembly {
            r := mul(2, 42)
            b := and(r, 3)
        }
        return (2, 4);
    }
    function myFunction() public pure returns (uint256 r) {
        uint160 r;
        uint256 l;
        bool b;
        assembly {
            r := mul(2, 42)
            b := and(r, 3)
        }
    }
}
address payable a = 0x118;
contract C {
    function f() public payable {
        uint128 b = a;
        uint256 r = a;
        uint160 r2 = a;
        uint128 b2;

        l8: r;
        l8: r2;
        l8: bytes20;

        uint128 b3 = a;
        uint256 r3 = a;

        b3;
        r3;

        require(a.balance >= 6000 ether);

        b2;

        uint256 x = a;
        uint128 a0 = x;
        uint256 b0 =
