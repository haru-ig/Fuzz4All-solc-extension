pragma solidity ^0.8.0;
contract d{
    struct A{
        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
    }

    mapping(address => int) a;
    int i;
    function getA() public pure returns (c,A storage) {
        A storage x;
        x.a = 1;
        x.b = 2;
        x.c = 3;
        return (c(),x);
    }
}
