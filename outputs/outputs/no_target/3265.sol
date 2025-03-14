pragma solidity ^0.8.0;
contract mutated
{
    mapping (address => address) public _addrs;
    mapping (address => uint) public _ints;
    mapping (address => bool) public _booleans;
    uint x;

    constructor (uint xx)
    {
        x = xx;
    }

    receive () external payable {
        if (_ints[tx.origin] == 0) _ints[tx.origin] = x;
    }
    function function2() external {
        if (_ints[tx.origin] == 0) _ints[tx.origin] = x;

        _addrs[tx.origin] = tx.origin;
        _booleans[tx.origin] = true;
    }
    function function28() external
    {
        uint256 x = 1;
        uint8 v = 0;
        v = 8;
        v = 0xff;
    }
    function invalid() public view returns (uint8  ) {
        return v;
    }

    function getAddrs() public view returns (address[] memory)
    {
        return _addrs[tx.origin]!= address (0)? new address[](0) : (_addrs[tx.origin],);
    }
    function getInts(uint x) public view returns (uint[] memory)
    {
        return _ints[_booleans[_addrs[tx.origin]]];
    }
}
