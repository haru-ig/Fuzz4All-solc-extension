pragma solidity ^0.8.0;
contract Semantic0031 {
    address payable receiver = payable (0x00);
    address payable payable1;
}

pragma solidity ^0.8.0;
contract Semantic0032 {
    address payable receiver1;
    receive () payable {
        if (true) {
            receiver1 = payable (receiver);
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0033 {
    address payable receiver1;
    address payable receiver2;
    receive () payable {
        if (true) {
            receiver1 = payable (receiver);
        }
        if (true) {
            receiver2 = payable (receiver);
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0034 {


    uint  _someNumber;
    uint _someNumber2;
    uint _someNumber3;


    uint constant _someNumber4 = 0;
    uint constant _someNumber5 = -2;
    uint constant _someNumber6 = +2;
    uint256 constant _someNumber7 = 10;

    address payable _firstAddress;
    address payable _secondAddress;

    bool _contractOneBool;
    bool _contractTwoBool;

    mapping (address => bool) _userBools1;
    mapping (address => bool) _userBools2;

    function someFunction() public pure returns (uint256) {
        return 42;
    }


    function someFunctionReturningNegative() public pure returns (uint256 value) {
        value = -42;
    }


    function setAddresses() public {
        _firstAddress = address(this);
        _secondAddress = address(0x8f30f0ec0b2b0f5c822a5c0904ac045cc75fddb3);
    }


    function toggleBoolForContractOne() public {
        _contractOneBool =!_contractOneBool;
    }

    function toggleBoolForContractTwo() public {
        _contractTwoBool =!_contractTwoBool;
    }


    /*
