pragma solidity ^0.8.0;
contract Mutators5 {
    struct State { uint X1; uint X2; uint X3; uint X4; uint X5; uint X6; uint X7; uint X8; }
    State X;
    function decrementX () external view returns (uint) {
        uint X7 = X.X1 = X.X1 - 1;
        if(X.X1<1) {
            X.X1 = 1;
            while(X.X1>1) {
                X.X1 -= 1;
                if(X.X1<1) { break; }
            }
        }
        return X.X1;
    }
}
