pragma solidity ^0.8.0;
contract O {
    bool f;
    function g() public {
        uint8 i = 15;
        f = true;
        uint160 j = uint160(1024);
        uint i2;

    }
}

pragma solidity ^0.6.7;
contract O {
    bool f;
    function _add211() internal pure returns (uint160 a, uint160 b) {
        a = b;
        b = a + 1;
        return (a, b);
    }
    function g() public pure returns (uint160, uint160) {
        uint160 a;
        uint160 b;
        a = _add211(15, 1);
        b = _add211(15, 1);
        a += b;
        b += a;
        return (a, b);
    }
}

pragma solidity ^0.8.0;
contract O {
    bool f;
    function f2(string memory x) internal pure returns (address y) {
        return (0);
    }
    function f2(uint256 x) internal pure returns (bytes32 y) {
        return (0);
    }
    function f2(bytes20 x) public pure returns (address y) {
        return (0);
    }
    function g() public pure returns (uint160, uint160, uint160, uint160) {
        uint160 a;
        uint160 b;
        address c;
        uint160 d;
        address e;
        (a, b, c, d) = f2("a");
        (a, b, c, d) = f2(2);
        (a, b, c, d) = f2("00000000000000000000000000000000000000000000000000000000000000005");
        (a, b, c, d) = f2(21152926);
        (a, b, c, d) = f2("0111");
        (a, b, c, d) = f2(uint256(22));
        (a, b, c, d) = f2(uint256(211));
        (a, b, c, d) = f2(bytes20(bytes(222)));
        (a, b, c, d) = f2(address(222));
        (a,
