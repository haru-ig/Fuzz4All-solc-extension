pragma solidity ^0.8.0;
contract Mutators9 {
    uint X = 20;
    function increment (uint Y) external {
        if (Y <= X) X += Y;
    }
}
contract Mutators10 {
    uint X = 10;
    uint Y = 2;
    function increment2 (uint Z) public {
        uint V1 = X + 1;
        if (Z <= V1) V1 += Z;
    }
}
