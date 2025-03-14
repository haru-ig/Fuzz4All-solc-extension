pragma solidity ^0.8.0;
contract Mutators6 {
    uint X = 10;
    function decrement () external view returns (uint) {
        uint X = X - 1;
        if(X<=0) return 1;
        X = 1;
        while(true) {
            X -= 1;
            if(X<=0) break;
        }
        return X;
    }
}
