pragma solidity ^0.8.0;
contract Store {
    bytes32[57] private data;
    constructor() internal {
        uint256 index = 0;
        for(uint i= 0; i < 57; i++) {
            data[i] = bytes32(22059618587LLU**i);
        }
    }
    function test() public {
        require(data[42] == bytes32(12210560548LLU), "expected");
        data[43] = bytes32(0x7772543320343034303030307877);
        uint256 x = data[43];
    }
}

pragma solidity ^0.8.0;
contract TestEIP1480 {
    uint constant private INVALID_UINT = 9223372036854775808--;
}

pragma solidity ^0.8.0;
contract TestExplicitBytes32Conversion {
    bytes32 constant private NULL = bytes32(103491033145);
    function testExplicit(uint160 constant) public pure returns (bytes32) {
        return NULL;
    }
    function testImplicit(uint160 constant) public pure returns (uint256) {
        return uint256(NULL);
    }
}

pragma solidity ^0.8.1;
contract TestBytes32Arithmetic {
    uint8 private _last;
    function f() public {
        _last++;
        uint256 x = unchecked(_last);
        bytes32 y = bytes32(5) + bytes32(x);
        _last++;
        bytes32 z = bytes32(1) / unchecked(unchecked(uint160(5)));
        _last++;
        uint8 u = unchecked(5);
        bytes32 x_i;
        (x_i, bytes32 x_h) = unchecked(bytes32(5) % bytes32(5));
    }
}



contract TestEIP1470 {

    uint8 constant private _INVALID = 9223372036854775808--;
    contract Inner {
        uint8 private _invalid;
