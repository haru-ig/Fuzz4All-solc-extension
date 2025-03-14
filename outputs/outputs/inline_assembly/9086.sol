pragma solidity ^0.8.0;
contract Contract
{
    uint i;
    constructor(uint i_)
    {
        i = i_;
    }
    function add(uint b) public pure returns (uint)
    {
        return Lib.add(b, i);
    }

    function mul(uint b) public pure returns (uint)
    {
        return Lib.mul(b, i);
    }

    function print() public pure {

    }

    function print(string memory s) public pure {

    }

    function print(uint i) public pure {

    }

    function div(uint b) public pure returns (uint) {
        return Lib.add(b, i);
    }


    function pure_pure_pure_pure(uint b) public pure returns (uint) {
        return Lib.add(b);
    }

    function isEven(uint b) public pure returns (bool) {
        return (b % 2 == 0);
    }
}
