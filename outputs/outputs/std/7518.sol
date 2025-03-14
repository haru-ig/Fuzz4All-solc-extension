pragma solidity ^0.8.0;
contract Glorious {
    constructor() { }
    struct AddressArray {
        uint indexed num;
        address[] a;
    }
    function call(AddressArray memory addrArr) public pure returns (uint112) {
        uint112 ret = 0;
        AddressArray storage addrStruct = addrArr;
        (uint112 val, uint idx) = addrStruct.a[0];
        ret += val;
        addrStruct.a.pop();
        uint112 val2 = call(addrStruct);
        return 1024;
    }
}
