pragma solidity ^0.8.0;

 contract Foo is I {
    struct Bar { uint256 a; string b; } bar; constructor () public {

        bool success = C(I(address(0)).b).b;
        require(success, "b");
    } function f() public {
        uint256 d = 1;
        bar.b = "a";

        uint256 b = bar.a;
        uint256 a = bar.b;

        bars(bar);
    } function g() public {
        uint d = 1;
        E(I(address(0)).d).b = d;
        E(I(address(0))).b = d;
        E(I(address(0))).f = true;
        E(I(address(0))).g = true;
        bars(bar);
    }
    function bars(Bar memory) public {
        uint256 a2 = int(bar.b);
        uint256 b2 = uint(bar.b);
        uint256 b2 = 1;
        uint256 b2 = bool(bar.b);
        uint256 b2 = bytes2str(bar.b);
        uint256 b2 = str2bytes(bar.b);
        uint256 b2 = bytes32(bar.b);
        uint256 b2 = bytes32("a");
    }
    function int(string memory) public pure returns (int) {
        return 0;
    }
    function uint(string memory) public pure returns (uint) {
        return 0;
    }
}
contract Test {
    constructor () public {
        if (true) b = C(true).b;
        if (true)bars(true);
        if (true)c() = E(I(false)).b;
    }
    function bool(bool) public pure returns (bool) {return true;}
    function bytes2str(bytes memory) public pure returns (string memory) {}
    function str2bytes(string memory) public pure returns (bytes memory) {}
    function bytes32(bytes32) public pure returns (bytes32) {}
}
contract Test2 {
    function c() public pure {uint256 i;}
    function bars(bool) public pure {bool b;}
}
contract Test3 {
    bytes2str();
    str2bytes();
    bytes32(uint256);
}
contract Test4 {
    bytes2str();
}
contract Test5 {
    constructor (uint) public {}
    function void() public pure {
        bytes32 b1;
        bytes32(uint256.max);
        bytes32(uint160.max);
    }
}
contract Test6 {
    constructor (uint) public
