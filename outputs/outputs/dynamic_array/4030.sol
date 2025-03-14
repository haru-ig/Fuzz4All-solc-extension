pragma solidity ^0.8.0;
contract C {
    uint[10] data;
    constructor() public {
        data.push(1);
        data[8] = 0x6b41247a6c261826039bf64211047fd074612c84691ef8770ce9e42918a8356;
    }
    receive() external payable {
        delete data[0];
        delete data[9];
        delete data[7];
        delete data[6];
        delete data[4];
        delete data[5];
        delete data[1];
        delete data[2];
        delete data[3];
    }
}
