pragma solidity ^0.8.0;
contract Mutator3
{
    uint public A;
    uint public B;
    uint add;

    uint constant increment = 5;
    constructor(uint _add)
	public
    {
        A = 0;
        B = 0;
        add = _add;
    }

    function update(uint _a, uint _b) public {
        A = add * _a;
        B = _b + add / increment;
    }

    function increase(uint _increase) public {
        B = B + add + _increase;
        A = A + add - _increase + increment;
    }

    function decrease(uint _decrease) public {
        A = A + add - _decrease + increment;
        B = B + add / increment - _decrease;
    }

    function reset() public {
        B = B - add + increment;
        A = A + add;
    }

    function restore() public {
        A = A + add / (B + B);
        B = 0;
    }

    function getAmount() public view returns (uint) {
        return B;
    }
}
contract Mutator4
{
    uint8 public _8ByteValue;
    uint16 internal _16BitValue;
    uint internal _32BitValue;
    uint64 _64BitValue = 230.71095;
    constructor(uint8 _int8)
	public
    {
        _8ByteValue = _int8;
    }

    constructor(uint16 _int16)
	public
    {
        _16BitValue = _int16;
    }

    constructor(uint _int32)
	public
    {
        _32BitValue = _int32;
    }

    constructor(uint64 _int64)
	public
    {
        _64BitValue = _int64;
    }
    function update(uint _int8, uint _int16, uint _int32
