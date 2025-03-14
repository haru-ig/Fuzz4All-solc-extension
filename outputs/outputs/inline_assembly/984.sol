pragma solidity ^0.8.0;
contract CounterBasic {
    uint public i;
    function increment() public {
       i += 1;
       emit Incremented(_i);
    }
    event Incremented(uint _i);
    address _caller;
    constructor () public {
        _caller = msg.sender;
    }
    modifier onlyCaller() {
        require(msg.sender == address(this));
        _;
    }
    function getCallerAddress() public view returns (address _CallerAddress) {
        return _caller;
    }
}
