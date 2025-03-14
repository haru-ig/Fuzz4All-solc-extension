pragma solidity ^0.8.0;
contract Mutator
{
    uint public A;
    uint public B;
    uint add = 6;
    uint decrease = 0;
    uint increase = 0;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B + decrease;
    }
    function increase() public {
        A = A + increase + (uint160(address(this))).balance - (uint160(address(this))).balance / 10000000000000000000 * add;
    }
    function decrease() public {
        B = B - decrease;
        B = B + increase - decrease + add;
        A = A + increase + A - decrease + (uint160(address(this))).balance;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}
