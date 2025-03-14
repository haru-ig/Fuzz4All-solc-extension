pragma solidity ^0.8.0;
contract Mutators6 {
    function increment (uint a) public returns (uint) {
        a = 10;
        while(true) {
            a += 1;
            if(a<=10) break;
        }
        return a;
    }
}
