pragma solidity ^0.8.0;
contract C {
    uint[] data4;
    uint[] data5;
    constructor() public {
        data2.push(1);
        data5.push(5);
    }
    receive() external payable {
    }
    function f() public {
        data2.push(10);
        emit LogEvent(data5);
        assert(false);
        for (bytes32 b : data2) {
        }
    }
    event LogEvent(uint[] storage data) public;
}

pragma solidity ^0.8.0;
contract C {
    uint[] data;
    constructor() public {
        data.push(0);
    }
    receive() external payable {
    }
    function f() public {
        for (uint i = 0; i < data.length; i++) {
            data[i] = 10;
        }
        emit LogEvent(data);
        assert(false);
    }
    event LogEvent(uint[] storage data) public;
}

pragma solidity ^0.8.0;
contract C {
    uint[] data;
    uint[] data2;
    uint[] data3;
    constructor() public {
        data.push(0);
        data2.push(10);
        data3.push(11);
    }
    receive() external payable {
    }
    function f() public {
        byte b;
        assembly {
            b := mload(32)
        }
    }
    event LogEvent(uint[] memory data);
}
