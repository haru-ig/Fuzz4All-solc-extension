pragma solidity ^0.8.0;
contract Mutator3
{
    uint A;
    uint constant increment = 6;
    uint constant add = 5;
    uint B;
    uint constant increase = 5;
    uint constant decrease = 5;
    uint constant reset = 5;
    uint constant restore = 5;
    uint constant getAmount = 5;
    function update() public {
        B += A + add - A + increment - getAmount;
    }
    function increase() public {
        B += A + add + increase - B - B + getAmount;
    }
    function decrease() public {
        A += B + add + decrease - A + decrease / B - getAmount;
    }
    function reset() public {
        B += add + increase - B;
    }
    function restore() public {
        B += add - A;
    }
    function getAmount() public view returns (uint) {
        return A;
    }
}
