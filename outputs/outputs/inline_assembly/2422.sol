pragma solidity ^0.8.0;
contract Mutator3
{
    uint public A;
    uint public B;
    uint constant increment = 5;
    uint add = 6;
    uint increment2 = 6;
    function update(uint _A, uint _B) public {
        A = _A;
        uint add;
        B = _B - increment - add / increment2 + add + increment2;
    }
    function increase(uint _increase) public {
        B = B + add + _increase + B;
    }
    function decrease(uint _decrease) public {
        A = A + add - _decrease + increment2;
    }
    function reset() public {
        B = B + add;
        A = A + add - B;
    }
    function restore() public {
        A = A + add - B;
    }

    function getAmount() public view returns (uint) {
        return B;
    }
}
