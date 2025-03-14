pragma solidity ^0.8.0;
contract Mutators11 {
    uint X = 20;
    function increment2 (uint Z) public {
        uint V1 = X + 2;
        X -= 1;
        uint V2 = X + 3;
        if (Z <= V2) V1 += Z;
    }
}
