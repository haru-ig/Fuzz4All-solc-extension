pragma solidity ^0.8.0;
contract Test96 {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure {
        storageTestMemStore();
        A memory b;
    }
    function g() public pure {
        storageTestMemLoad();
        A memory b;
    }
    function h() public pure {
        storageTestMemSet();
        A memory b;
    }
    function i() public pure {
        storageTestMemClear();
        A memory b;
    }
    function j() public pure {
        storageTestMemDelete();
        A memory b;
    }
    function k() public pure {
        A memory a;
        a.array[1][1];
        memory b = a;
        storageTestMemDelete();
    }
    function storageTestMemStore() public pure {
        A storage s = storageTestMemStoreStore();
        s.array[1][1];
    }
    function storageTestMemStoreStore() public pure returns (A storage) {
        A memory b;
        b.array[1][1];
        return b;
    }
    function storageTestMemStoreClear() public pure {
        A memory b;
        b.array[1][1];
    }
    function storageTestMemStoreLoad() public pure returns (A storage) {
        A storage s;
        s.array[1][1];
        return s;
    }
    function storageTestMemLoad() public pure {
        A memory b;
        b.array[1][1];
    }
}
