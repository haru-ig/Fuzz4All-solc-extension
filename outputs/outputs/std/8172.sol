pragma solidity ^0.8.0;
contract Convert {
    function hexStringToUint(string memory) public pure returns (uint) {
        bytes memory bytes1 = hex"00";
        assembly {
            return (mload(add(bytes1, 32)))
        }
    }

    function numToString(uint x) public pure returns (string memory) {
        return toString(x);
    }

    function toString(uint x) public pure returns (string memory) {
        bytes memory buffer = new bytes(65);
        uint digit = 0;
        while (x >= 10) {
            digit++;
            x /= 10;
        }
        buffer[64 - digit] = byte(uint8(digit + uint8('0')));


        digit /= 2;
        buffer[63 - digit] = byte(uint8('0' + bytes1[uint8('a' + (x - 10) * 10)]));



        return string(buffer);
    }
}

pragma solidity ^0.8.0;


contract MyUint {
    uint x;
    constructor () public {
        x = 1;


    }
    function get() public pure returns (uint) {
        return x;
    }
}


contract MyInts {
    uint x;
    constructor () public {
        x = 34254232456454;


    }
    function get() public pure returns (uint) {
        return x;
    }
