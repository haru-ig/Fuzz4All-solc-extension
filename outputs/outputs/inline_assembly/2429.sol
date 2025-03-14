pragma solidity ^0.8.0;
library Mutator2 {
    uint constant increment = 5;
    uint add = 6;
    uint constant increment2 = 6;
    uint add2 = 6;
    function update(uint _A) public pure returns (uint) {
        return _A - increment - add / increment2 + add + increment2;
    }
    function increase(uint _increase) public pure returns (uint) {
        return _increase + add + B;
    }
    function decrease(uint _decrease) public pure returns (uint) {
        return _decrease - add / increment2 - increment2;
    }    function restore(uint _A) public pure returns (uint) {
        return _increase + add - B;
    }
    function getAmount(uint _B) public pure returns (uint) {
        return _B;
    }
}

contract Mutator1
{
    Mutator2.update.mutate().increase(10).increase(10)
    (new Mutator2()).increase(10)
    Mutator2.increase.mutate().increase(10).increase(10).decrease(10)
    (new Mutator2()).increase(10)
    Mutator2.increase.mutate().increase(10).increase(10).decrease(10)
    (new Mutator2()).increase(1000)
    Mutator3(add).update(10).update(10).increase(10)
    (new Mutator3()).update(10)
    Mutator3(add).update(10).update(10).increase(10)
    ;
    function getAmount(uint _A) public view returns (uint) {
        return _A.plus(increment).minus(add).plus(increment2);
    }
}<jupyter_output>
