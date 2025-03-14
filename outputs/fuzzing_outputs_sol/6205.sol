pragma solidity ^0.8.0;
contract MutantFallback {
    function normalCall() public pure {
    }
    function externalCall() public pure returns (bool) {
        return false;
    }
    function internalCall() public pure {
    }
    receive () external payable {}
    fallback () external payable {}
}

pragma solidity ^0.8.0;
contract MutantFallback {
    function normalCall() public pure {
    }
    function externalCall() public pure returns (bool) {
        return false;
    }
    function internalCall() public pure {
    }
    receive () external payable {}
    fallback () public {
        externalCall();
    }
}
