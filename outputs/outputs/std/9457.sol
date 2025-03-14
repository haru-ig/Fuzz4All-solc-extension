pragma solidity ^0.8.0;
contract Contract1
{
    function returnZero(uint value) public returns(uint) {
        return value;
    }
    function returnZero2(uint from, uint to) public returns(uint) {
        uint result;
        if (to == from)
        {
            result = 0;
        }
        return result;
    }
    function returnZero3(uint value, uint from, uint to) public returns(uint) {
        return to * from / value;
    }
    function returnTen(uint value) public returns(uint) {
        return value * 10;
    }
    function returnBigZero(uint value) public returns(uint) {
        if (value >=0)
        {
            return value;
        }
        else
        {
            return 0;
        }
    }
}
