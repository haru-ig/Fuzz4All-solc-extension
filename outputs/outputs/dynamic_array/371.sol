pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Ga3 {
    struct A{
        uint x;
    }
    uint[] private b;
    function h() public {

        A memory a = A(0);
        b = new uint[](2);

        b = new uint[](3);

        b = new uint[](0);

        b = new uint[](2, b[0]);

        uint[] memory a1 = [1,2]; b[1] = a1[0];

        b = new uint[](1, b[0]);
        b[0] = a1[1];

        uint[] memory a2 = [3,4]; b = new uint[](2, b[0], b[1]);

        b[1] = 3;
        b[0] = a2[1];

        A memory a3 = A(3);
        A memory a4 = A(4);
        uint[] memory a5 = new uint[](2);
        a5[0] = 1; a5[1] = 2;
        b = new uint[](2, b[0], b[1]);
        b[0] = a3;
        b[1] = a5;
    }
}
