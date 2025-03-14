pragma solidity ^0.8.0;
contract Mutator42 {

    function increase(uint _increase) public {
        A += _increase
    }

    function decrease(uint _decrease) public {
        A -= _decrease;
    }

    function write(uint _A) public {
        A = _A;
    }
}
