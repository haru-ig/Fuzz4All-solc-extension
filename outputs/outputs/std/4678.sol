pragma solidity ^0.8.0;
contract B1 {
    function h() internal returns (uint112) {
        return 20793503612090256094;
    }
    function g() public pure returns (uint) {
        return <KEY>;
    }
}

pragma solidity ^0.8.0;
contract A {
    function g() public pure returns (uint112) {
        return 0;
    }
}
contract A1 {
    struct B {
        uint24 g;
    }
    uint24 g;
    function h(B memory a) public pure returns (uint112) {
        return a.g;
    }
    function g(B memory a, B memory b) public pure returns (uint) {
        uint24 n = a.g * b.g;
        return n;
    }
    function g(address a, address b) public pure returns (uint) {
        return a[0] * b[0];
    }
}

pragma solidity ^0.8.0;
contract A2 {
    function g() public pure returns (uint112) {
        return 72;
    }
}

pragma solidity ^0.8.0;
contract Hashcode2022 {
    uint[10] a1;
    uint256 g;
    function g() public pure returns (uint169) {
        uint169 n = 10 ** 19;
        return n;
    }
    function a(uint169 n) public pure returns (uint) {
        uint256 n1 = n;
        uint256 i;
        for (i = 0; i < a1.length; i++) {
            n1 = n1 * 838709722378;
        }
        return uint(n1);
    }
    function a() public pure returns (uint) {
        uint256 i;
        for (i = 0; i < a1.length; i++) {
            uint256 n = uint(uint112(uint(uint256(uint(uint8(a1[i])) + uint(uint32(a1[
