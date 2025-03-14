pragma solidity ^0.8.0;
contract EquivalentABIv1SemanticallyEquivalentInterface {
    address public contract_address;
    function (bytes) payable public;
    constructor() public {
    }
}


pragma solidity ^0.7.5;
contract EquivalentABIv07AbiV1IncompatibilityInterface {
    uint16 public max_uint16;
    bool public constant is_incompatible;
    constructor() public {
    }
    function (address) public {
    }
}


pragma solidity ^0.7.5;
contract EquivalentABIv07AbiV1Incompatibility2Interface {
    uint16 max_uint16;
    bool constant is_incompatible2;
    message SomeMessage(uint num);
    mapping (address => uint) public map;
    string constant message;
    constructor() {
    }
}


pragma solidity ^0.6.2;
contract EquivalentABIv06AbiV1Incompatibility3Interface {
    mapping(bytes32 => uint) map;
    uint public constant value;
    constructor() public { }
    function (bytes32 b) public { }
}


pragma solidity ^0.6.1;
contract EquivalentABIv06AbiV1Incompatibility4Interface {
    mapping (uint => uint256) mapping (uint => uint256) map;
    uint public constant value;
    constructor() public { }
    function (uint key, uint value_) public { }
}
