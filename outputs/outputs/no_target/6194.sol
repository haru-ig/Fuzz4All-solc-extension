pragma solidity ^0.8.0;
contract MutatedContractV1 {
    uint public mutatedValue = 0;
    uint constant mutationAmount = 1;
    uint constant valueZero = 0;
    uint constant valueOne = 1;
    uint constant valueTwo = 2;
    uint constant valueThree = 3;
    uint constant valueFour = 4;
}

pragma solidity ^0.8.0;
contract CompatibleContractV1 {
   uint public mutatedResult = 0;
    uint public mutatedValue = 0;
    bool public boolResult = true;
    bool public boolValue = true;
}
pragma solidity ^0.8.0;
contract CompatibleContractV2 {
   uint public mutatedResult = 0;
    uint public mutatedValue = 0;
    bool public boolResult = true;
    bool internal boolValue = false;
}

pragma solidity ^0.8.0;
contract CompArgCompatibleContract {
    SupportedContract public contract2;

    constructor(address _a) public {
        contract2 = SupportedContract(_a);
    }
}
contract SupportedContract {
    address _address;
    constructor(address _a) public {
        _address = _a;
    }
}

pragma solidity ^0.8.0;
contract CompReturnTypeCompatibleContract {
    enum E {X; Y}
    SupportsContractFunction public contract2;

    constructor(address _a) public {
        contract2 = SupportsContractFunction(_a);
    }

    function supportsReturn() public returns(address) {
        return contract2;
    }
}
contract SupportsContractFunction {
    address _address;
    constructor(address _a) public {
        _address = _a;
    }

    function supportsReturn() public returns(address) {
        return contract2;
    }
}
