pragma solidity ^0.8.0;
contract oldStorage{
    uint constant a = 0;
}
contract myContract {
    struct MyStruct {uint a,b;}

    uint constant a = 0x01;
    uint constant b = 0x100;

    MyStruct constant s = MyStruct(a, b);

    function myContract() {
        a = 0x5A;
        b = 0x4;
        call_old();
    }

    function myContract(address c) {
        a = 0x67;
        b = 0x10;
        call_new();
    }

    function old_storage() constant {
        return oldStorage().a;
    }

    function old(address old_storage) constant returns(uint) {
        return oldStorage(old_storage).a;
    }

    function old_storage_a(address old_storage, uint val) constant returns(uint) {
        return oldStorage(old_storage).a;
    }

    function new_storage() constant {
        return MyStruct(a, b).a;
    }

    function new_storage_b(address new_storage, uint x) constant returns(uint) {
        return newStorage(new_storage).a;
    }

    function new_storage_b(address new_storage, uint x, uint y) constant returns(uint) {
        return newStorage(new_storage).a;
    }

    function new_storage_b_mod(address new_storage, uint base, uint x) constant returns(uint) {
        return newStorage(new_storage, x).a;
    }
}
