pragma solidity ^0.8.0;
contract myMutated {
    uint256 constant internal fixed_constant = 987652;
    uint256 immutable constant _myValue = 789129875;
    constructor () public {
        fixed_constant = -42;
    }
}

pragma solidity ^0.8.0;
contract Test {
    constructor() {
        bool _condition = msg.value > 1 ether;
        assert(_condition);
    }
    modifier onlyOwner() {
        require(msg.sender == owner(), "Only owner can call this");
        _;
    }
    function myConstant() public returns (uint256) {
        return constant_variable;
    }
}


pragma solidity ^0.8.0;
contract Test {
    constructor() {
        assert(false);
    }
     modifier onlyOwner() internal{
        require(msg.sender == owner(), "Only owner can call this");
    }
    function myConstant() public {
        return constant_variable;
    }
}
contract Test {
    event C(uint256 value);
    constructor() {
        emit C(constant_variable);
    }
}
