pragma solidity ^0.8.0;
contract SemanticEquivalenceMutatorContract {
    uint256 public _value;
    struct RandomVariable{
     uint256 _value1;
    }
    function add() public {
        _value += 1;
    }
    function addRandomVariable() public {
        _value += RandomVariable(2318722).value1;
    }
    function remove() public {
        _value -= 1;
    }
    function removeRandomVariable() public {
        _value -= RandomVariable(22).value1;
    }
}

pragma solidity ^0.8.0;
contract VariableReaderContract {
    uint256 public x;
    function getAddress(uint64 x_) public view returns(uint256) {
        uint256 n = Test4(Test4()).x;
        return n;
    }
}
