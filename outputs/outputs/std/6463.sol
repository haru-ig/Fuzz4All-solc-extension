pragma solidity ^0.8.0;
contract Convert {
    function hexStringToBytes(string calldata x) public pure returns (bytes memory b)
        require(x.length*2 >= 2,"Too short byte string");
    function bytesToString(bytes memory x) public pure returns (string memory) {
        bytes memory y = new bytes(x.length/2);
        uint index = 0;
        while (index < x.length) {
            bytes1 b1 = bytes1(bytes(x)[index]);
            bytes1 b2 = bytes1(bytes(x)[index+1]);
            y[index/2] = byte(byte(b1)<<4 | byte(b2));
            index += 2;
        }
        return string(y);
    }
    function intTo16(uint i) public pure returns (uint16) {
        require(i <= 0xffff,"Value too large");
        return uint16(i);
    }
    function intTo24(uint i) public pure returns (uint24) {
        return uint24(i);
    }
    function intTo40(uint i) public pure returns (uint40) {
        return uint40(i);
    }
    function intTo64(uint i) public pure returns (uint64) {
        require(i < 0xffffffff,"Value too large");
        return uint64(i);
    }
    function intTo80(uint i) public pure returns (uint80) {
        return uint80(i);
    }
    function intTo128(uint i) public pure returns (uint128) {
        require(i < 0xffffffffffffffffffffffff,"Value too large");
        return uint128(i);
    }
}
