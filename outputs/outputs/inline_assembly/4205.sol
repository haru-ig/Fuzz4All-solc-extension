pragma solidity ^0.8.0;
contract Mutators9 {
    uint X = 10;
    constructor () {
        while(X>=10) {
            X -= 1;
            if(X<10) break;
        }
        X += 2;
    }
}
