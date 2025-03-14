pragma solidity ^0.8.0;

contract SimpleSolidity {
    struct Values {
        uint a;
        uint b;
        uint c;
        uint value;
    }

    constructor(uint256 initialValue) public {
        Values memory values = Values(initialValue, 0, 1, 1);
        a = values.a;
        if (a == 0) {
            b = values.b;
        } else {
            b = values.a + 1;
        }
        c = addValues4(a, b, 2);
        bytes memory bytesToWrite = bytes("Hello World");
        writeBytes(bytesToWrite.length, bytesToWrite);
    }

    function setValues(uint a, uint b, uint c) public {
        a = a;
        b = b;
        c = c;
    }


    function writeBytes(uint bytesLength, bytes calldata bytesToCopy) internal pure {
        bytes memory bytesToWrite = new bytes(bytesLength);
        assembly {
            let ptr := mload(add(bytesToWrite, 32))
            copy(add(bytesToWrite, 32), bytesToCopy, bytesLength)
            mstore(ptr, add(bytesToWrite, 32))
        }
    }

    uint a;
    uint b;
    uint c;
}
