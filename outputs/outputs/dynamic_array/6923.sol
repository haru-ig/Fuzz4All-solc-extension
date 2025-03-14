pragma solidity ^0.8.0;
contract Test2 {

    enum E {

        one

    }

    struct S {
        bytes16[] bar;
        E x;
        address[] arr;
        string r;
    }

    constructor() {
        address[] calldata a = new address[](1);
        address[] calldata b = new address[](1);
        E memory e = E.one;


        S memory s;
        s.bar = "bar".bytes16_to_bytes16s();
        s.r = "renamed";
        s.arr = a;
        s.x = E.one;


        s.x = E.one;
        s.bar = "bar".bytes16_to_bytes16s();
        s.bar[1] = 0;
        s.arr[1] = 0x42;
        s.r = "renamed";
    }
}
