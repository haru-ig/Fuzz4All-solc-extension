pragma solidity ^0.8.0;
contract New {
    function new(uint _a) pure public returns(uint _b) {
        return 2*_a;
    }
}
contract OldFallback {
    function() external payable {
        fallback(old(()));
    }
}

pragma solidity ^0.8.0;
contract NewFallback {
    function() external payable {
        fallback(new(uint()));
    }
}
