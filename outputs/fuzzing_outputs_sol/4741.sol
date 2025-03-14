pragma solidity ^0.8.0;
contract Caller {
    constructor() {
        require(true);
    }
    function _transferEther(address _addr, uint _value) internal {
        require(_addr.call{value: _value}());
    }
}
