pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 3;
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 4;
    modifier onlyBeneficiary {
        require(msg.sender == beneficiary);
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 5;
    uint _constant = 3;
    modifier onlyBeneficiary {
        require(msg.sender == beneficiary);
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 6;
    uint _constant = 3;
    modifier onlyBeneficiary {
        require(msg.sender == beneficiary);
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 7;

    function callPrivateFunction() public pure onlyBeneficiary {
        return 0;
    }

    function callPublicFunction() public pure onlyBeneficiary {
        return 0;
    }

    function callPublicFunctionWithConstantParam(uint _constant) public {
        require(msg.sender == beneficiary);
        _constant = 2;
        _constant = _constant + 2;
    }

    function callPrivateFunctionWithConstantParam(uint _constant) private pure
        onlyBeneficiary
    {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 8;

    function callPublicFunction(uint _constant) public pure onlyBeneficiary {
        _constant = 2;
        return _constant + 2;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 9;

    function callPrivateFunction(uint _constant) private pure onlyBeneficiary {
        _constant = 2;
        return _constant + 2;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    address public beneficiary;
    uint public constant value = 10;

    function callPublicFunctionWithProvidedAddr(address _to) public pure onlyBeneficiary {
        return 0;
    }

    function callPublicFunctionWithoutProvidedAddress(address _to) public pure {
        _to;
    }
}

pragma
