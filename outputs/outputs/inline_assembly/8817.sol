pragma solidity ^0.8.0;
contract Mutate
{
    address payable constant owner = payable(msg.sender);
    uint constant value = 1;
    uint constant data_count = 8;
    bytes32 constant funcName = keccak256("incrementInt");

    struct StoredData
    {
        uint val;
    }

    uint _int = 1;
    StoredData[] memory _data;

    function increase() public
    {
        _int++;
        _increment(int_max);
    }

    function increaseAndCall() public
    {
        _increment(_int);
    }

    function increaseAndCall2() public
    {
        _incrementAndCall(int_max);
    }

    function initArrays(uint count) public
    {
        for(uint i = 0; i < count; i++)
        {
            _data.push(StoredData(999));
        }
    }

    function increaseArrayAndCall() public
    {
        uint a = 0;
        unchecked { a += 15; }
        _increment(_int);
        for(uint i = 0; i < data_count; i++)
        {
            _data[a + i].val = 2999;
        }
    }

    function incrementInt() public
    {
        _increment(_int);
    }

    function _increment(uint increment) internal
    {
        unchecked { unchecked { _int = increment; } }
    }

    function _incrementAndCall(uint increment) internal
    {
        _increment(increment);
        unchecked { unchecked {  msg.sender.call(bytes(abi.encode(funcName,"_incrementAndCall"))); } }
    }

    function incData(uint val) onlyOwner public
    {
        _data[0].val += val;
    }
}
