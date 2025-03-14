pragma solidity ^0.8.0;
contract MutatedContract {
    modifier isMutated {
        address oldFallback = fallback();
        _;
        if (!isContract(oldFallback))
            fallback();
    }
    function fallback() pure private returns (bool) {
        return false;
    }
}
