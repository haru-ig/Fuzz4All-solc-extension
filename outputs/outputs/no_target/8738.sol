pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV02MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[address(this)] = (address(0));
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV01ImmutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[(address(this))] = address(this);
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV02ImmutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[(address(this))] = (address(0));
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV03ImmutableInterface {
    mapping (address => address) public mints;
    function f() public {
        if (address(0) == mints[(address(this))]) {
            mints[(address(this))] = address(this);
        } else {
            mints[(address(this))] = (address(0));
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV04ImmutableInterface {
    mapping (address => address) public mints;
    function f() public {
        if (address(0) > mints[(address(this))]) {
            mints[(address(this))] = address(this);
        } else {
            mints[(address(this))] = (address(0));
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv07WithoutAbiV01MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[address(this)] = address(this);
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv07WithoutAbiV02MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[address(this)] = (address(0));
    }
}
