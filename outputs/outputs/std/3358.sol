pragma solidity ^0.8.0;
contract ArrayMutatorMutator {
    function updateStringElements(uint256 x) public {
        {
            assembly {
                mstore(add(array(), 2), sub(x, 1))
            }
        }
    }
}
