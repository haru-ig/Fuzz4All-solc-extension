pragma solidity ^0.8.0;
contract SemanticsEquivalentArrayNestedCallData {
    function SemanticsEquivalentArrayNestedCallData(address a, bool c) public {

          require(a == calldata[1]);
    }
}
