pragma solidity ^0.8.0;
contract Mutators9 {
    uint X = 10;
    function increment () external view returns (uint) {
        uint X;
        X = X + 1;

        if(X>=2) return 1;
        X = 2;

        while(X<2) {
            X += 1;

            if(X>=2) break;
        }
        return X;
    }
}
contract Mutators10 {
    uint X = 10;
    function increment () external view returns (uint) {
        uint X;

        X = X + 1;
        if(X>=2) return 1;
        X = 2;

        while(X<2) {
            X += 1;
            if(X>=2) break;
        }
        return X;
    }
}
