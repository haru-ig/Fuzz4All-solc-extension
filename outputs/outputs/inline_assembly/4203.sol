pragma solidity ^0.8.0;
contract Mutators5 {
    uint X = 10;
    function decrement () public returns (uint) {
        uint X = X - 1;
        if(X<=0) return 1;
        X = 1;
        while(X>0) {
            X -= 1;
            if(X<=0) break;
        }
        X = 1;
        return X;
    }
}
