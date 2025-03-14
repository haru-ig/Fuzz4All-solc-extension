pragma solidity ^0.8.0;
contract Lemmas {
    uint32 constant _MAX_VALUE = 0xffffffff;
}

pragma solidity ^0.8.0;
contract DontKnow {
    uint8 x;
    function f() external view returns (uint8) {
        x = 42;
        return x;
    }
}

pragma solidity ^0.8.0;
contract DontReadOrWriteWithoutInitialisation {
    uint8 y = 0x00;
    uint8 a = 0x01;
}

pragma solidity ^0.8.0;
contract DontAccessValuesForWhichThereAreNoInitialisations {
    uint8 x;
    function f() external returns (uint8) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract AccessingStorageWithoutUpdate {
    uint8 z;
    function f() external view returns (uint8) {
        return z;
    }
}

pragma solidity ^0.8.0;
contract AccessingValuesWithoutInitialised {
    uint8 x;
    function f() external constant returns (uint8) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract ChangeType {
    uint256 z;
    function f() constant external returns (uint256) {
        return z;
    }
}

pragma solidity ^0.8.0;
contract ChangeReturnType {
    uint256 x;
    function f() public constant returns (uint256) {
        return x;
    }
}
contract MultipleReturnTypes {
    uint8 x;
    function f() public constant returns (uint256, uint256) {
        return (2, x);
    }
}
contract MultipleReturnWithFallback {
    uint8 x;
    function f
