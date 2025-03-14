pragma solidity ^0.8.0;
contract Fallback {
    function _fallback_call() private pure {
        if (true) {
            fallback();
        }
    }

    receive() external pure {
        revert();
    }
}
