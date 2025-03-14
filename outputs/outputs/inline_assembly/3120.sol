pragma solidity ^0.8.0;
contract C2 {
    uint public a;
    uint public b;
    constructor() public {
        a = 98765;
        b = 87654321;
    }
    function read() view public returns (uint) {
        return (a + b);
    }
}

pragma solidity ^0.8.0;
contract C3 {
    uint public a;
    uint public b;
    uint[] non_constant;
    bytes[] constant_bytes;
    constructor() public {
        a = 98765;
        b = 87654321;
        non_constant = new uint[](30);
        for(uint i; i < 30; i++) non_constant[i] = i+1;
        constant_bytes = new bytes[](30);
        for(uint j; j < 30; j++) constant_bytes[j] = string(abi.encodePacked("111111"));
    }
}

pragma solidity ^0.8.0;
contract C4 {
    uint public a;
    uint public b;
    uint[] non_constant;
    bytes[] constant_bytes;
    constructor() public {
        a = 98765;
        b = 87654321;
        non_constant = new uint[](30);
        for(uint i; i < 30; i++) non_constant[i] = i+1;
        constant_bytes = new bytes[](30);
        for(uint j; j < 30; j++) constant_bytes[j] = string(abi.encodePacked("111111"));
        non_constant_bytes = new bytes[](2);
        for(uint k; k < 2; k++) non_constant_bytes[k] = new bytes(32);
    }
    fallback() external payable {}
    function get() public {
        uint a = read();
        uint b = read_bytes(read_array());
        uint c = read_array_bytes(read());
        uint d = read_array_bytes_bytes(read_array_bytes(read
