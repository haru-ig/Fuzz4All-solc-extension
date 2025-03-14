pragma solidity ^0.8.0;
contract Mutators11 {
    uint public a;
    function increment1 (uint Y) public {
        uint Z = Y + 1;
        if (Y <= Z) a += Y;
    }
}
