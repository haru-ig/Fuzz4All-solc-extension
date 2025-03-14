pragma solidity ^0.8.0;
contract Mutated5 {
    uint256 public a;
    uint128 public b;
    uint64 public c;
    function increase() public {
        a=a+10;
    }
    function increaseOne() public {
        a=a+1;
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
    function increaseFour() public {
        increase();
        increase();
        increase();
        increase();
    }
}
