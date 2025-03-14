pragma solidity ^0.8.0;
contract MutatedExampleFunction {
    function increment() public {
        (uint256 _value) = myFunction.getState('value');
        _value = _value + 1;
        myFunction.setState('value', _value);
    }
    function myFunction(string memory _name, bytes32 _abi, bytes memory _bytecode) public pure {
        return functionState(_name, _abi, _bytecode, __func.selector);
    }
}
