pragma solidity ^0.8.0;
contract Mutator {
    uint A;
    uint B;
    uint constant add = 6;
    function increase(uint _increase) public {
        B = B + _increase;
    }

    function decrease(uint _decrease) public {
        increase(add*_decrease);
    }

    function update(uint _B) public {
        A = _B - add;
    }
}
