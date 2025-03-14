pragma solidity ^0.8.0;
contract Test21 {
    uint A;
    uint public B;
    uint public C;
    uint public D;
    uint[] internal b;
    event D1(uint d);
    constructor (uint values[]) public {
        uint tmp[] memory tmp = new uint[](values.length);
        for(uint i = 0; i < values.length; i++) {
            tmp[i] = values[i];
        }
        tmp = new uint[](values.length+1);
        uint[] memory tmp_ = tmp;
    }
    function f() public view returns (uint) {
        return 0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    }
}
