pragma solidity ^0.8.0;
contract Mutator
{
    uint storedData;
    function mutator(uint _storedData) payable external {
        storedData = _storedData;
    }
    function getValue() external view returns (uint) {
        return storedData;
    }
}

address admin;

function isAdministrator() internal view returns (bool) {
    return true;
}

contract UpgradeTestOneOff {
    address public impl;

    constructor() {





        admin = msg.sender;
    }

    modifier onlyAdministrator() {
        require(isAdministrator(), "Only the admin of a contract can call this function.");
        _;
    }


    function setImplAddress() public onlyAdministrator {
        emit SetImplAddress(address(impl));
        impl = msg.sender;
    }
}

contract UpgradeTestMultiOff {
    address public impl1;
    address public impl2;

    constructor() {}

    modifier onlyOneOfThreeAddresses() {}


    function setImplOneAddress() public onlyOneOfThreeAddresses {
        emit SetImplOneAddress(address(impl1));
        impl1 = msg.sender;
    }


    function setImplTwoAddress() public onlyOneOfThreeAddresses {
        emit SetImplTwoAddress(address(impl2));
        impl2 = msg.sender;
    }
}

pragma solidity ^0.8.0;

contract FirstCall {}
contract SecondCall {
    bytes32 public firstMessage;
    uint public secondMessage;
    constructor() {
        firstMessage = keccak256(abi.encodePacked(abi.encodePacked(1),"1"));
        secondMessage = 0x2F590000;
    }
    function callFirstCall() public view returns (uint) {
        FirstCall.first().sendValue(firstMessage);
        return secondMessage;
    }
}
contract MutatorSecondCall {
    uint public value = 0;
    event GetSet(uint newValue);
    constructor () public {
        secondMessage = 0x3;
    }
    function setSecondMessage(uint secondMessage) external {
        firstMessage = secondMessage;
        GetSet(secondMessage);
    }
}

address admin;

function isAdministrator() internal view returns (bool) {
    return true;
}
