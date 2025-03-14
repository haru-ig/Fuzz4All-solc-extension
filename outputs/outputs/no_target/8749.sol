pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV02ImmutableInterface {
    mapping (address => address) public mints;
    uint minter;
    function f() public {
        mints[(address(this))] = address(this);
        minter = mints[(address(this))];
    }
}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV2ImmutableInterface_ERC20Base_ {
    mapping (address => address) public mints;
    function f() public {
        mints[(address(this))] = address(this);
    }
}
pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV2ImmutableInterface {
    mapping (address => address) public mints;
    address public tokenHolder;
    address public masterRegistry;
    uint256 public minter;
    constructor() {
        tokenHolder = msg.sig;
        masterRegistry = msg.sig;
        mints[tokenHolder] = tokenHolder;
    }
    modifier restrictToMasterRegistry() {
        require(masterRegistry == msg.sig, "Master Registry not set.");
        _;
    }
    function f() public restrictToMasterRegistry {
        mints[(address(this))] = address(this);
        minter = mints[(address(this))];
        emit Transfer(0, msg.sender, 0, true);
    }
}
