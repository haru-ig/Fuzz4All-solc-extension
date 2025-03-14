pragma solidity ^0.8.0;
contract Array {
    uint[] numbers;
    uint[] addresses;
    uint numberOfElements;
    bytes32[] hashes;
    uint32[] uintValues;
    bytes memory memoryStrings;
    uint256[] data;
    uint8 memory bytesValues;
    mapping(uint256 => string) stringHash;
    mapping(uint256 => address) addressHash;

    function push(uint x) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        numberOfElements += 1;
    }

    function push2(uint x, bytes memory b) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(bytes32(b));
        numberOfElements += bytes32(b).length / uint(1e16);
        return (num);
    }

    function push3(uint x, bytes32 b) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(b);
        numberOfElements += b.length / uint(1e16);
        return (num);
    }

    function push4(uint x, bytes1 b) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(b);
        numberOfElements += b.length / uint(1e16);
        return (num);
    }

    function push5(uint x, bytes memory b) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(b);
        numberOfElements += bytes(b).length / uint(1e16);
        return (num);
    }

    function push6(uint x, bytes1 b, uint256 y) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(b);
        numbers = data;
        uintValue(x).push(y);
        numberOfElements += b.length / uint(1e16);
        return (num);
    }

    function push7(uint x, bytes memory b, uint256 y) public {
        addresses.push(address(x));
        uint num = numbers.push(x);
        numbers = addresses;
        push(b);
        numbers = data;
        uintValue(x).push(y);
        numberOfElements += bytes(b).length / uint(1e16);
        return (num);
    }

    function push8(uint256 x, bytes1 b) public {
        uint num = data.push(x);
        push(b);
        numberOfElements += b.length / uint(1e16);
        return (num);
    }

    function push9(uint256 x, bytes memory b) public {
        uint num = data.push(x);
        push(b);
        numberOfElements += bytes(b).length / uint(1e16);
        return (num);
    }

    function push10(uint256 x, bytes memory b, uint256 y) public {
        uint num = data
