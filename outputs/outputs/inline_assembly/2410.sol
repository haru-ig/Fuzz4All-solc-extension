pragma solidity ^0.8.0;
contract Mutator
{
    uint public A;
    uint add = 4;
    uint public B;
    uint subtract = 2;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B + subtract;
    }
    function increase(uint _increase) public {
        B = B + _increase;
    }
    function decrease(uint _decrease) public {
        A = A - _decrease - 4;
    }
    function reset() public {
        B = B + subtract;
        A = A - add + 2;
    }
    function restore() public {
        A = A - subtract + B;
        B = 0;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
