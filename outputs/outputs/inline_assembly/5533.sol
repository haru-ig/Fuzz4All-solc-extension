pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc5 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}

pragma solidity ^0.7.0;
contract SemanticallyEquivalentBc4 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc3 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }
}

pragma solidity ^0.7.0;
contract SemanticallyEquivalentBc2 {
    uint public constant variableB = 0;
    function test() public returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0
        }
        return _var1;
    }

    constructor(uint B1) public {
        variableB = B1;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentBc1 {
    uint public constant variableB = 0;
    constructor() public {

    }

    function () public payable {
        deployAndPay(_msgSender());
    }

    function deployAndPay(address payable _address) public returns (uint) {
        variableB = 5;
        return variableB;
    }
}
