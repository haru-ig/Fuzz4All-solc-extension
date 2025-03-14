pragma solidity ^0.8.0;
contract Mutators9 {
    bool X = false;
    function increment (uint z) {
        X = X == 1;
        if(!X) Z = z - 1;
    }
    function increment2 (uint z) {
        if(!X) Z = z - 1;
        X = Z == 1;
    }
    function increment3 (uint z) {
        if(!X && X!= 1) Z = z - 1;
        X = X == false;
        if(Z!= 1) return false;
        return X;
    }
}
