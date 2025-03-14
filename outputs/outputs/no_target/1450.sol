pragma solidity ^0.8.0;
import './Semantic0031.sol';

contract Semantic0031 {
    function notMutant() public pure {
        if (false == true) {
            revert();
        }
        else {
            return;
        }
    }
}
