pragma solidity ^0.8.0;
contract Mutated3 {
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
        a--;
    }
    function increaseBoth() public {
        increase();
        increase();
        increase();
        increase();
    }
    function increaseThree() public {
        increase();
        increase();
        increase();
        increase();
        increase();
    }
}
