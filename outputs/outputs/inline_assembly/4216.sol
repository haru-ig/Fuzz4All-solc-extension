pragma solidity ^0.8.0;
contract Mutators11 {
    uint public a;
    uint public b;
    function increment2 (uint Y) public {
        uint Z = Y + 1;
        if (Y < b) {
            while (Y < b) {
                uint T = Y + 1;
                a += Y;
                Z += Y;
                Y += T;
            }
        } else {
            uint T = Y + 1;
            a += Y;
            Z += Y;
            Y += T;
        }
    }
}
