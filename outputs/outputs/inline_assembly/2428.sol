pragma solidity ^0.8.0;
contract Mutator4
{
    uint public A;
    uint public B;
    uint constant add = 1;
    uint public increment;
    uint public increment2;
    functioincrase()public {
            B = B + add + B;
            B = B + B + B;
            uint add;
    }
    function init() public {
            A = A + add + increment2 + A;
            B = B + add;
        }
    function save() public {
            A = A + add - B;
                B = B + B;
        }
    function restore() public {
          B = B + B + B + A;
            A = A - add + B + B;
        }
    function getAmount() public view returns (uint) {
        return B;
    }
}
