pragma solidity ^0.8.0;
contract Mutator4
{
    uint public A = 5;
    uint add = 120;
    uint public B;
    uint constant increment = 3;
    uint decrement = 4;
    uint constant decrement2 = 4;
    uint remove = 1;
    void increase() public {
        B = B + add + decrement + increment2;
    }
    function increase2() public {
        B = B + add + remove + decrement + decrement2;
    }
    function update() public {
        A = A + add - decrement + increment2;
    }
    function decrease() public {
        A = A + add - remove + decrement2;
    }
    function decrease2() public {
        A = A + add - decrement + remove - increment2;
    }
    function reset() public {
        B = B + add - decrement2;
        A = A + add;
    }
    function restore() public {
        A = A + add + remove - B;
        B = 0;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
