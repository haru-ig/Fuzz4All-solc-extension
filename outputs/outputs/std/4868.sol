pragma solidity ^0.8.0;
contract Mutate {

    uint _testCounter;


    address[3] private _testArray;



    uint[3] private _testSequence;

    mapping(uint => uint) private _testLookup;

    function Test() {
        _testCounter = 0;
    }






    function index(uint i, uint last)
        internal
        pure
        returns (uint)
    {
        return _testLookup[uint(i) + uint(last)];
    }





    function clearIndex(uint i, uint last)
        internal
        pure
        returns (uint)
    {
        uint res = _testLookup[uint(i) + uint(last)];
        _testArray[i] = 0x0;
        _testLookup[uint(i)] = 0x0;
        return uint(res);
    }

    function increment(uint i)
        internal
        pure
        returns (uint)
    {
        uint res = _testArray[i];
        _testArray[i] = res + 1;
        _testLookup[res + 1] = uint(i);
        return uint(res);
    }

    function decrement(uint i)
        internal
        pure
        returns (uint)
    {
        uint res = _testArray[i];
        _testArray[i] = res - 1;
        _testLookup[res] = uint(i);
        return uint(res);
    }


    function setArray(uint _i, uint _j, uint _k) internal pure { _testArray[uint(_i)] = _j; _testArray[uint(_i+1)] = _k; }
    function setSequence(uint _i, uint _j) internal pure { _testSequence[uint(_i)] = _j; }
    function getIndex(uint _i) internal pure returns (uint) { return _testLookup[uint(_i)]; }
    function getArray(uint _i) internal pure returns (uint) { return _testArray[uint(_i)]; }
    function get
