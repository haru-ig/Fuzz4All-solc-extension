pragma solidity ^0.8.0;
contract MutatingProgram {
    Caller _caller;
    function fallback(uint x) external payable { _caller.get.value(x)(); }
    function get() public view returns (uint) {

        uint constant FALLBACK_VALUE = 89768;

        uint constant GET_VALUE = 56487;
        return _caller.get() + FALLBACK_VALUE + GET_VALUE;
    }
}


contract ReadAddress {
    Caller _caller;
    address public storage_address;
    function get() public view returns (address) {
        assert(_caller.get()!= 0);
        return address(_caller.get());
    }
    function fallback(uint x) external payable {
        Caller storage caller = _caller;
        assert(x > 0);
        caller.get.value(x)();
    }
}
