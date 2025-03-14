pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public a;
    uint128 public b;
    constructor () {
        b = b+10;
        a = a+1;
    }
    function increase() public {
        a++;
    }
    function increaseOne() public {
        a++;
    }
    function increaseBoth() public {
        increase();
        increase();
    }
    function increaseThree() public {
        increase();
        increase();
        increase();
    }
}
