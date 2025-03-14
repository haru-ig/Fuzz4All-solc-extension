pragma solidity ^0.8.0;
contract Mutated3 {
    uint256 [12] b = [12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12];
    uint256 public a;
    constructor () {
        a = a + 1;
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
    function modify() public {
        b[5] = -b[5];
    }
    function update() public {
        a++;
    }
}
