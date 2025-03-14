pragma solidity ^0.8.0;
contract SomeInterface {
    function m() external returns (uint256 v) {
        return 1;
    }
    function c() external view returns
    (uint256 v) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract SomeInterface {
    function m() public view returns (uint256 x) {
        x = 1;
        return 2;
    }
    function c() public view returns (uint256 x, uint256 y) {
        x = 1;
        y = 1;
        return 2;
    }
}

pragma solidity ^0.8.0;
contract SomeInterface {
    function m(uint256 x) public view returns
    ( uint256 xx, uint256 yy) {
        xx = x;
        yy = x + 2;
        return 3;
    }
    function c() public view returns
    ( uint256 z) {
        uint256 z = 1;
    }
}

pragma solidity ^0.8.0;
contract SomeInterface {
    uint256 constant CONSTANT_VALUE = 15;
    uint256 public CONSTANT_VAR;
    uint256 public NEW_CONST;
}

pragma solidity ^0.8.0;
contract SomeInterface {
    uint256 constant CONSTANT_VALUE = 15;
    uint256 constant CONSTANT2_VALUE = 25;
    uint256 public CONSTANT_VAR;
    mapping (uint256 => uint256) CONSTANT_VAR2;
}

pragma solidity ^0.8.0;
contract SomeInterface {
    uint256 constant CONSTANT_VALUE = 15;
    uint256 public CONSTANT_VAR;
    uint256 public NEW_CONST;
}

pragma solidity ^0.8.0;
contract SomeInterface {
    uint256 constant CONSTANT_VALUE = 15;
    uint256 public CONSTANT_VAR;
    uint256 public NEW_CONST;
}

pragma solidity ^0.8.0;
contract SomeInterface {
    uint256
