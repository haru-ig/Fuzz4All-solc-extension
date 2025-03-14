pragma solidity ^0.8.0;
contract Mutators12 {
    uint public b;
    function increment1 (uint Y) public {
        uint Z = Y + 2;
        b += Y;
        if (b > Z) b += Y;
    }
}
