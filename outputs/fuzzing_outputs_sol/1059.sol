pragma solidity ^0.8.0;
contract Caller {
    fallback function() external payable {}
    receive () external pure {}
}

pragma solidity ^0.8.0;
contract C1 {
    ContractFallback _callback;
    fallback () external payable {
        _callback();
    }
    receive () external pure {
    }
}
