pragma solidity ^0.8.0;

contract Mutator4
{
    uint A;
    function write(uint _A) public {
        A = _A;
    }

    function increase(uint _increase) public {
        A = A + _increase;
    }

    function decrease(uint _decrease) public {
        A = A - _decrease;
    }

    function getAmount(uint _B) public view returns (uint) {
        return A - A + _B;
    }

    function main() public returns (uint) {
        return (A + A + A + A + A + A + A + A + A + A + A + A + A + A + A + A + A + A + A + (A + 1));
    }
}
