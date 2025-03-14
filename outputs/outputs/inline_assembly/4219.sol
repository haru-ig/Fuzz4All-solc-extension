pragma solidity ^0.8.0;
contract Mutators12 {
    uint public a;
    function increment1 (uint Y) public {
        if (Y > 0) {
            uint Z = Y + 1;
            return;
        }
        a -= 1;
    }
}
