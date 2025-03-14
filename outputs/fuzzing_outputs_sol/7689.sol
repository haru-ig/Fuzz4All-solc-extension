pragma solidity ^0.8.0;
library SemanticsEquivalence
{
    uint256 public value;
    function set(uint256 _v) public pure { value = _v; }

    bytes32 public myMethod = "x";
    function semanticEquivalence() public pure { revert(); }
}
contract Fallback
{
    function fallback() public payable {

        SemanticsEquivalence.semanticEquivalence.value(address(this).balance)();

        SemanticsEquivalence.set(address(this).balance)();

        SemanticsEquivalence.semanticEquivalence.myMethod();
    }
}
