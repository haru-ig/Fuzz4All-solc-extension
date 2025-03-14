pragma solidity ^0.8.0;
contract C {
    uint[] data;
    uint[] data2;

    address addr;
    function f() public {
        data.push(1); data.push(2); data.push(3);
        data2.push(1);
        for ( uint i = 0; i < data2.length; i++) {
        data[data.length + i] = data[i] + 1;
        data2[i] = data.length + i;

        addr = C(addr).addr;
    }
    }
}
