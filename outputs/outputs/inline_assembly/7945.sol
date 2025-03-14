pragma solidity ^0.8.0;
contract L76MultipleReturn3 {
    uint _x;
    uint _y;
    uint z;
    bool flag;
    uint yz;
    uint xz;
    function sneaky0() public returns(uint, uint, uint) {
        xz = 456;
        yz = xz;
        return (_x, _y, z);
    }
    function sneaky1() public returns(uint, uint, uint, bool) {
        flag = xz > yz;
        yz = xz;
        return (flag? _y : _x, xz, z);
    }
}
