pragma solidity ^0.8.0;
contract Decrementer {
    uint constant X = 10;
    function decrement (uint b) external view returns (uint) {
        uint a;
        while(true) {
            b -= 1;
            if(b>10) return 1;
            a = X;
        }
    }
}
