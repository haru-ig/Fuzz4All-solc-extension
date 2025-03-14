pragma solidity ^0.8.0;
contract Mutated {
    function fallbackMutator(uint _dummy, bytes memory _bytes, bytes memory _bytes1) public pure {
        fallbackMutator(_dummy,_bytes,_bytes1);
    }
    function fallbackMutator(uint _dummy, bytes memory _bytes, bytes memory _bytes1) private pure {}
}

pragma solidity ^0.8.0;
contract UsedFallback {
    bytes32 public foo;
    function foo() public pure {
        foo = 12345;
    }
    fallback() external {
        revert();
    }
    function() external pure {}
 }
