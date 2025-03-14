pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV02Interface {
    bytes20 internal constant OUR_ADDRESS_HASH = bytes20(keccak256(abi.encode("\x08\x82\x7f\x21\x32\xf5\x33\x0c\x47\xff\xff\x00")));
    bytes20 internal constant MOST_GAS_SAFE_ADDRESS_HASH = bytes20(keccak256(abi.encode("\x59\x5b\xfe\xdc\x76\xae\x55\xf5\x04\x4a\x8e\x89")));
    mapping (bytes20 => address) public mints;
    function f() public {
        address addrFrom = (address(this))[0];
        bytes20 hash = mints[from];
        require(address(this)[0] == addrFrom, "test");
        require(hash == OUR_ADDRESS_HASH, "test");
        require(MOST_GAS_SAFE_ADDRESS_HASH == MOST_GAS_SAFE_ADDRESS_HASH, "test");
    }
}

contract EquivalentABIv08AbiV02AbiV01ImmutableInterface {
    mapping (address => address) public mints2;
    function f() public {
        mints2[(address(this))] = address(this);
    }
}
contract EquivalentABIv08AbiV01MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[(address(this))] = address(this);
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv02AbiV1Interface {
    function f() public {
        mints[(address(this))] = address(this);
    }
}
contract EquivalentABIv02AbiV1AbiV02ImmutableInterface {
    mapping (address => address) public mints2;
    function f() public {
        mints2[(address(this))] = address(this);
    }
}

contract EquivalentABIv02AbiV1AbiV02MutableInterface {
    mapping (address => address) public mints2;
    function f() public {
        mints2[(address(this))] = address(this);
    }
}
