pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint128 public b;
    constructor () {
        a = a+1;
        b = b+1;
    }
    function increase() public {
        a++;
    }
    function decrease() public {
        a = 0;
    }
    function increaseAndDecrease() public {
        a++;
        decrease();
    }
    function increaseAndIncrease() public {
        increase();
        increase();
    }
}
