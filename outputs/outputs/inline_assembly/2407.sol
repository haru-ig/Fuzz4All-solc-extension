pragma solidity ^0.8.0;
contract Mutator {
    uint A;
    uint B;
    mapping(uint => uint) public map;
    uint add = 0;
    function update(uint _A, uint _B) public {
        map[1]++;
        A = _A;
        B = _B - add;    }
    function increase(uint _increase) public {
        B = B + _increase;
    }
    function decrease(uint _decrease) public {
        A = A - _decrease + 4;
    }
}
