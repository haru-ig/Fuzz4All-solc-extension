pragma solidity ^0.8.0;
interface Receiver {
    function set(uint x) external;
}
contract Setable is Receiver {
    address private _addr;
    address payable private _caller;
    uint private _storage;

    constructor(address _addr) public {
        _addr.transfer(5 ether);
        _caller = _addr;
        _storage = 10;
    }

    modifier onlyCaller() {
        require(msg.sender == _caller, "Caller is not the caller");
        _;
    }

    function get() external view returns(uint);

    function fallback(uint x) external onlyCaller {
        require(x == _storage, "set incorrect value");
        _storage = x + 10;
    }

    function set(uint x) external {
        _addr.transfer(x);
    }
}
