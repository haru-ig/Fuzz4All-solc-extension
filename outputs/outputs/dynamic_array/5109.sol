pragma solidity ^0.8.0;
contract Test94F4 {
    bytes32 a;
    address[] memory b;
    constructor(uint x) public {
        a = 1;
        b = new address[](x);
    }
    function h(uint x) public pure {
        bytes32 c;
        a = 2;
        c = bytes32(b);
        a = 3;
        a = x;
    }
    function c3(uint x) public pure {
        bytes[] memory d;
        a = 4;
        c() > a;
        bytes32 b;
        a = 5;
        b = a;
        a = c3(x);
    }
    function c5() public pure {
        bytes32[] memory d;
        a = 6;
        b = a;
        a = c3(6);
    }
    function c6() public pure {
        bytes32[] memory d;
        bytes32 e;
        c5();
        bytes storage f;
        f = a;
        a = b;
        a = e;
    }
    function c7() public pure {
        bytes32[] memory d;
        bytes e;
        c5();
        bytes memory f;
        f = a;
        a = b;
        a = c3(f);
    }
}
