pragma solidity ^0.8.0;
contract Mutator1
{
    uint public A;
    uint public B;
    uint constant add = 5;
    uint constant increment = 5;
    uint public A1;
    uint public B1;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B - increment - add / increment + add + increment;
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
        B = B + add - A + increment2;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
