pragma solidity ^0.8.0;
contract Mutator
{
    uint public first_A;
    uint public second_A;
    uint public A;

    uint add = 6;

    function update(uint _first_A, uint _second_A, uint _A) public {
        A = _A;
        first_A = _first_A;
        second_A = _second_A - add;
    }

    function increase(uint _increase) public {
        A = _increase+ 4;
        second_A = second_A + _increase + add;
    }

    function decrease(uint _decrease) public {
        second_A = second_A - _decrease + 4 + add;
    }

    function reset() public {
        second_A = second_A - add + first_A;
        first_A = 0;
        A = _A + 4;
    }
    function restore() public {
        A = second_A - add + _A + first_A;
        first_A = _A;
        second_A = 0;
    }

    function addAmount() public view returns (uint) {
       return A;
    }
}
