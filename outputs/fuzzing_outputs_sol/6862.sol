pragma solidity ^0.8.0;
contract MutatorB {
    Mutator target;
    constructor(address _targetAddress) {
        target = Mutator(_targetAddress);
    }
}

pragma solidity ^0.8.0;
contract MutatorB {
    contract MutatorA {
    }
    MutatorA targetA;
    MutatorB(address _targetAddress, address _address) {
        targetA = MutatorA(_address);
    }
}
contract Fallback {
    address payable public target;
    constructor(address _targetAddress) {
        target = _targetAddress;
    }
    fallback () external payable {
        _;
    }
}

pragma solidity ^0.8.0;
contract ContractA {
    address target;
    constructor(address _targetAddress) {
        target = _targetAddress;
    }
    fallback() external payable {
        ;
    }
    receive() external payable {
    }
}
