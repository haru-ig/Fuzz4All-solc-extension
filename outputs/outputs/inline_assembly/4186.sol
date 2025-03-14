pragma solidity ^0.8.0;
contract Mutators7 {
    function increment (uint a) public returns (uint) {
        while(true) {
            a += 1;
            if(a>10) break;
        }
        return a;
    }
}
