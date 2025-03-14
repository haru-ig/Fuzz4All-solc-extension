pragma solidity ^0.8.0;
interface ITest7 {
    function func() public;
    event E();
}
contract Test7Impl {
    uint[][] a;
    constructor() {
        a[1] = new uint[](1);
        uint[] memory i1 = a[1];
        uint[] memory i2 = i1;
        uint[] memory i3;
        i3 = i2;
        i2 = i3;
        i2 = new uint[](1);
        i2[2-1] = 10;
        address addr2 = address(this);
        addr2.transfer(0);
    }
}
