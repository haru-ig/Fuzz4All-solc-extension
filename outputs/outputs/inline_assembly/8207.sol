pragma solidity ^0.8.0;
contract Mutated3 {
    uint128 public a;
    uint256 public b;
    constructor() {
        b = b+10;
        a = a+2;
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
