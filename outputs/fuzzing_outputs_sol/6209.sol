pragma solidity ^0.8.0;
contract MutantFallback {
    function normalCall() public pure {
        assert(true);
    }
    function externalCall() public pure {
        contract MutantInterface {
            fallback() external payable;
        }
    }
    function internalCall() public pure {
        contract MutantInterface {
            fallback() internal payable;
        }
    }
}
