pragma solidity ^0.8.0;
contract C {
    uint[] public data;

    function f(uint[] memory data2) public {
        for (uint i = data2.length - 1; i >= 0; i--) {
            data[i] = 10 * i;
            for (uint j = 0; j < i;  j++) {
                data[i + 1] = 10 * j + data[i];
            }
            data[data.length - 1] = data[0] + i;
        }
    }

    function f_2(uint[] memory data2) public {
        for (uint i = 0; i < data2.length; i++) {
            data[i] = 10 * i;
            for (uint j = 0; j < i;  j++) {
                data[i + 1] = 10 * j + data[i];
            }
            data[data.length - 1] = data[0] + i;
        }
    }

    function f_3(uint[] memory data2) public {
        uint[] storage data2Storage = data2;
        for (uint i = 0; i < data2Storage.length; i++) {
            data[i] = 10 * i;
            for (uint j = 0; j < i;  j++) {
                data[i + 1] = 10 * j + data[i];
            }
            data[data.length - 1] = data[0] + i;
        }
    }
}
