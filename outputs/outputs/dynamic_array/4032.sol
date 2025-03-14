pragma solidity ^0.8.0;
contract C {
    uint[] data = new uint[](32);
    bool[] values;
    uint[] data2;
    constructor() public {
        require(data.length == 32);
        values.push(true);
        values.push(false);
        values.push(true); data2.push(1);
        values.push(false); data2.push(3);
    }
    receive() external payable {
    }
    function g() public {
        for (uint i = 0; i < 20; i++) {
            for (uint j = 0; j < 10; j++) {
                this.values[i] = this.values[i];
            }
            for (uint j = 30; j < 40; j++) {
                data[j] = data[j];
            }
        }
        for (uint i = 0; i < 50; i++) {
            for (uint j = 0; j < 50; j++) {
                data[i] = data[i];
            }
        }
        for (uint i = 0; i < 25; i++) {
            data[i].push(data2[0]); data2.push(0x00);
        }
        for (uint i = 30; i < 40; i += 20) {
            data[i].push(data3[0]);
        }
        for (uint i = 40; i < 50; i++) {
            data[i].push(0);
        }
        for (uint i = 50; i < 60; i++) {
            data[i].push(0);
        }
        for (uint i = 30; i < 40; i += 15) {
            data[i].push(0);
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes32[] data;
    uint[] data2;
    constructor() public {
        data.push(keccak256("test"));
        data2[23] = 1;
    }
    receive() external payable {
    }
    function f() public {
        bytes3
