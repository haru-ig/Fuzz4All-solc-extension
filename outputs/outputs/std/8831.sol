pragma solidity ^0.8.0;
contract SemiMutated{
    uint8 constant value = 224;
}

pragma solidity ^0.8.0;
contract ThirdMutated{
    uint256 public constant value1 = 0;
    uint256 public constant value2;
    uint256 value3 = 11;
    constructor () public {
    require(value1 == 0);
    value2 = value3;
    value3 += 1;

    }
}
