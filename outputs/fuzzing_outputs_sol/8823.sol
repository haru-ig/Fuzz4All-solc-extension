pragma solidity ^0.8.0;
contract Mutator {
    function g() mutable public pure returns (uint);
}

pragma solidity ^0.8.0;
contract StaticModifier {
    static modifier staticModifier() {
        require(msg.data.length > 0);
        _;
    }
    function f() pure static method() {
        g;
        staticModifier;
    }
    static function g() pure static constant { require(false); }
}

pragma solidity ^0.8.0;
contract CompatibilityVersion {
    uint public constant constantFunctionValue = 42;
    mapping (uint => uint) public constantVariableValue;
}
pragma solidity ^0.8.0;
contract MutativeCompatibilityVersion {
    uint public constant constantFunctionValue = 42;
    mapping (uint => uint) public constantVariableValue;
    receive() external constant pure {
        require(_msgSender() < bytes(_msgData()).length);
        constantVariableValue[0] = 3;
    }
}
