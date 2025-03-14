pragma solidity ^0.8.0;
contract Test1 {
    bytes32[][][] a;
    function g() public pure returns (uint) {
        return a.length;
    }
    constructor() {
        a[1];
    }
    function f() public pure returns (uint) {
        return a.length;
    }
}
pragma solidity ^0.8.0;
contract Test2 {
    bytes32[][][] a;
    constructor() {
        a[1] = new bytes32[][](3);
    }
    function f() public pure returns (uint) {
        return a.length;
    }
    function g() public pure returns (uint) {
        return a.length;
    }
}

address[3] b;
contract Test3 {
    constructor() {
        b[0] = msg.sender;
        b[1] = 0x0;
        b[2] = 0x0;
    }
    function g() public pure returns (uint) {
        return b.length;
    }
    function h() public pure returns (uint) {
        return b[2];
    }
    function k() public pure returns (uint) {
        return (b[0], b[1]);
    }
    function l() public pure returns (uint) {
        return (b[1], b[2]);
    }
}

contract Test4 {
    uint x;

    function h() public view returns (uint) {
        return x;
    }
    function i() public view returns (uint) {
        return (uint)(x);
    }
    function j() public view returns (uint) {
        return (uint)x;
    }
    function k() public view returns (uint) {
        return (uint)x + (uint)x;
    }
    function l() public view returns (uint) {
        return ((uint)(x + 2)) + ((uint)x + 3);
    }

    constructor() public {
        x = 0;
    }

}
