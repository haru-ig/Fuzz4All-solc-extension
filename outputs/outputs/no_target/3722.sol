pragma solidity ^0.8.0;
contract A {
    uint d;
    function g() public returns (uint256) {
        return uint256(address(this).balance);
    }
}
contract B {
    uint d;
    uint24 c;
    function g() public returns (uint256) {
        return uint256(c << 1) | c;
    }
}
contract C {
    uint d;
    uint c;
    function g() public returns (uint256) {
        return uint(0) << c;
    }
}
contract D {
    uint d;
    uint24 c;
    function g() public returns (uint256) {
        return uint24(c + 0x1000) - 0x1000;
    }
}
