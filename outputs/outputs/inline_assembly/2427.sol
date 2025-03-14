pragma solidity ^0.8.0;
contract Mutator4
{
 mapping(address => uint) public balanceOf;
uint public constant increment = 5;
uint add = 6;
uint increment2 = 6;
function update(uint _A, uint _B, uint _C) public {
        A = uint(_A);
        B = uint(_B);
        uint add;
        uint increment2;
        uint add2;
        uint add3;
        B = _B - increment - add / increment2 + add + increment2;
        A = uint(_C) + B;
    }
    function increase(uint _increase) public {
        A = A + add + B + _increase + A;
    }
    function decrease(uint _decrease) public {
        A = A + add - _decrease + B + increment2 + A;
    }
    function reset() public {
        B = B + add + increment2 + A;
        A = A + add - B + increment2;
    }
    function restore() public {
        A = A + add - B + increment2;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
