pragma solidity ^0.8.0;
contract simple2 {
    struct MyData {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        uint g;
        uint h;
        uint i;
    }

    uint data_public;

    constructor() {
        data_public += 1;
        MyData memory data_storage;

        data_storage.a = 1;
        data_storage.b = 2;
        data_storage.c = 3;
        data_storage.d = 4;
        data_storage.e = 5;
        data_storage.f = 6;
        data_storage.g = 7;
        data_storage.h = 8;
        data_storage.i = 9;
        data_public += data_storage.a;
        data_public += data_storage.b;
        data_public += data_storage.c;
        data_public += data_storage.d;
        data_public += data_storage.e;
        data_public += data_storage.f;
        data_public += data_storage.g;
        data_public += data_storage.h;
        data_public += data_storage.i;
    }
}
