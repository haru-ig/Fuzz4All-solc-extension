pragma solidity ^0.8.0;
contract Mutate16 {
    function test() external {
        if (x!= 100) {
            x += 10;
        }
        else {
            x += 100;
        }
        x -= 2;
    }
}
