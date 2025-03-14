pragma solidity ^0.8.0;
contract SemanticallyEquivalentContractYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter) {
        require(_oldSetter == msg.sender);
        _;
    }
    function change (uint number) public onlyUpdate(msg.sender) {
        number -= ONE;
        number += ZERO;
        number -= TWO;
        number += ONE;
        number += TWO;
        number -= ONE;
        number += ONE;
        number -= TWO;
    }
}
contract NonSemanticallyEquivalentContractYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter) {
        require(_oldSetter == msg.sender);
        _;
    }
    function change (uint number) public onlyUpdate(msg.sender) {
        number -= 2;
        number -= 1;
        number += 1;
        number -= 1;
    }
}
