pragma solidity ^0.8.0;
contract Mutators9 {
    uint X = 10;
    function increment() external view returns (uint) {
        uint Y = X;
        X += 1;
        while(X<10) {
            X += Y;
            X += 2;
        }
        X -= 5;
        return X;
    }
}
