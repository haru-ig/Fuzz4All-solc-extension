pragma solidity ^0.8.0;
contract BadSolidity {
    function bad() public pure {
        assembly {
            mstore(0, add(132, mload(0)))
            mstore(0, mload(0))
        }
    }
}
