pragma solidity ^0.8.0;
contract SemanticEquivalenceContract {
    uint256 public _value;
    function get_value() public pure returns (uint256) {
        return _value1;
    }
    function set_value1(uint256 _value) public {
        _value1 = _value;
    }
}
contract Test5
{
    SemanticEquivalenceContract public _firstSemantic;
    SemanticEquivalenceContract public _secondSemantic;
}
contract Test6
{
    SemanticEquivalenceContract public _firstSemantic;
    SemanticEquivalenceContract public _secondSemantic;
    function get_value() internal returns (uint256) {
        return _value;
    }
}
contract Test7
{
    SemanticEquivalenceContract public _firstSemantic;
    SemanticEquivalenceContract public _secondSemantic;
    function set_value(uint256 _value) internal {
        _value = 123;
    }
}
