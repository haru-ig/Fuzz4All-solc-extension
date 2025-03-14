pragma solidity ^0.8.0;
contract Mutators7 {
    uint X = 10;
    function increment () external view returns (uint) {
        uint X = X + 1;
        if(X>=2) return 1;
        X = 2;
        while(X<2) {
            X += 1;
            if(X>=2) break;
        }
        return X;
    }
}
contract Mutators8 {
    uint X = 10;
    constructor () {
        while(true) {
            X += 1;
            if(X>=10) break;
        }
        X -= 2;
    }
}
