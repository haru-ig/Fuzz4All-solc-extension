pragma solidity ^0.8.0;
contract Arithmetic {
    function double(uint x) public pure returns (uint x2) {
    }
}
contract BitwiseAnd {
    function bitwiseand(uint x, uint y) public pure returns (uint) {
    }
}

pragma solidity ^0.8.0;
contract BitwiseAnd {
    mapping (address => uint) public bitwiseand;
}
contract ByteMathTest {
    function test() public pure returns(uint) {
        uint _random = 0;
        _random = uint(_random) + 0;
        return uint(_random);
    }
}
contract ByteMathTest2 {
    function doubleByte() public pure returns (uint) {
        uint x = 50;
        uint x2 = uint(x);
        return uint(uint(x2) >> 1);
    }
}
contract BitwiseOr {
    function bitwiseor(uint x, uint y) public pure returns (uint) {
    }
}
contract Comparisons {
    function eq(uint x, uint y) public pure returns (bool) {
    }
    function gt(uint x, uint y) public pure returns (bool) {
    }
    function lt(uint x, uint y) public pure returns (bool) {
    }
    function ge(uint x, uint y) public pure returns (bool) {
    }
    function le(uint x, uint y) public pure returns (bool) {
    }
}
contract MemoryTest {
    function test() public pure returns (address) {
        uint constant x = 999;
        uint constant x2 = uint256(x);
        address constant address_x = address(x);
        uint constant address_x2 = uint256(address_x);
        uint memory constant memory_x = 0;
        uint memory constant memory_x2 = uint256(memory_x);
        storage uint storage_x = 0;
        storage uint storage_x2 = uint256(storage_x);
        return address(x2);
    }
    function test2() public pure returns (uint) {
        uint memory memory_x = 0;
        uint memory memory_x2 = uint256(memory_x);
        uint[] memory array_x = new uint[](1);
        uint[] memory array_x2 = uint256(array_x);
        bytes memory bytes_x = bytes("hello";);
        bytes memory bytes_x2 = uint256(bytes_x);
        address constant address_x = address(uint256(0));
        address constant address2_x = uint256(address_x);
        uint constant uint_x = 1000;
        uint constant uint2_x = uint256(uint_x);
        uint8 constant uint8_x = 222;
        uint8 constant uint8_x
