pragma solidity ^0.8.0;
contract TestMutated4444666666 {
    uint256 val;

    function f() public pure returns (uint) {
        val = (44446666666);
    }

    function g() public pure returns (uint) {
        return val;
    }
    function h() public pure returns (uint) {
        return 44;
    }
    function i() public pure returns (uint) {
        return -1;
    }
}

pragma solidity ^0.8.0;
contract TestMutated4444666666 {
    uint private constant MAX = (2 ** 63) + 1;

    enum A { A0, A1 }
    mapping (A => uint256) internal mappingA;

    function f() public pure returns (uint) {
        return A.A0;
    }

    function g(uint256 x) public pure returns (uint) {
        require (x <= MAX, "Overflow");
        return A.A1;
    }

    function h(uint256 x) public pure returns (uint) {




        require (x <= MAX, "Underflow");
        return A.A1;
    }
}

pragma solidity ^0.8.0;
contract TestMutated4444666666 {
    enum A { A0, A1 }
    mapping (uint39 => A) internal mappingA;


    function f() public pure returns (uint33) {
        return 0;
    }

    function g(uint8 x) public pure returns (uint39) {
        require (x <= 0x357, "Overflow");
        return A.A1;
    }

    function h(uint8 x) public pure returns (uint39) {
        require (x <= 357, "Underfow");
        return A.A1;
    }

    function i() external pure Returns () {
        return uint39(uint128(uint512(-1)));
    }

    function j() public pure returns (uint39) {
        require (uint39(uint128(uint512(int64(-27466304885
