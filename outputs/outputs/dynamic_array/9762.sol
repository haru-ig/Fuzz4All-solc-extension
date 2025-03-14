pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        uint[] arr;
    }
    function fTest(Data memory d) public pure {
        bool flag;
        emit E(1, flag, flag, false, d.arr.length, d.arr, d.arr.length);
        Data memory new_;
        new_.arr = new uint[](2);
        new_.arr[0] = d.arr[0] + 1;
        d = new_;
    }
    event E(uint id, bool a, bool b, bool c, uint len, uint[] a, uint lenWithOutCalldata);
}
