pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint[] x;
        uint y;
    }
    bytes32 constant data1 =
        "\x60\x80\0\x58\xda";
    bytes32 constant code1 =
        "\x60\x80\0\5\x35\x90\x40\0";
    function f() public {
        S memory s = S(data1, code1);
        s.x = new uint[](4);
        s.x[0] = 1;
        s.x[1] = 2;
        s.x[2] = 3;
        s.x[3] = 4;
        s.y = s.x[0] + 1;
    }
}
