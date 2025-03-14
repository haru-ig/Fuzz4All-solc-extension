pragma solidity ^0.8.0;
import './TestMutator.sol';
contract TestContract {
    function getZero() public pure returns(uint40) {
        return TestMutator.getZero() + 1;
    }
}
