pragma solidity ^0.8.0;
contract MutatedContractCaller {
    fallback () public payable {}
    function set() public returns (uint) {
        return 6;
    }
}

pragma solidity ^0.8.0;
contract ImmutableContractCaller {
    event CallerSet(address _newCaller);
    address _caller;
    constructor (address _caller) {
        _caller = _caller;
    }
    fallback () public payable {
        emit CallerSet(_caller);
    }
    function set(address _caller) public {
        require(_caller!= msg.sender);
        _caller = _caller;
    }
    function get() public pure returns (uint) {
        return 7;
    }
}
