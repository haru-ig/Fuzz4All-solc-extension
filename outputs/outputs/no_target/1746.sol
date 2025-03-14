pragma solidity ^0.8.0;
contract Mutate1E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        _address = address(uint(_a));
    }
}

pragma solidity ^0.8.0;
contract Mutate2E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        _address = address(uint256((1 << 127) - uint(_a)));
    }
}

pragma solidity ^0.8.0;
contract Mutate3E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        _address = address(uint256(uint(_a)/ 65535));
    }
}

pragma solidity ^0.8.0;
contract Mutate4E {
    address _address;
    constructor (address _a) public {
        _address = _a;
    }
}

pragma solidity ^0.8.0;
contract Mutate5E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        _address = address(uint256(_a));
    }
}

pragma solidity ^0.8.0;
contract Mutate6E {
    address _address;
    uint _a;
    constructor (uint _a) public {
        unchecked {
            _address = address(uint256(uint(_a)));
        }
    }
}
