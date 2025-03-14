pragma solidity ^0.8.0;
contract Mutator3 {

    fallback function() external payable { }
}

pragma solidity ^0.8.0;
contract Reverter3 {

    function revertNoFallback() public { revert("No fallback is defined."); }
}
