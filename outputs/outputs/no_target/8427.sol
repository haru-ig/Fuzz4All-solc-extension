pragma solidity ^0.8.0;
contract Unsafe8C {
    constructor (address _addr) public {
        _addr = _addr;
    }
    function set(address _addr) public {
        _addr = address(_addr);
    }
}
