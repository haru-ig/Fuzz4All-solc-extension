pragma solidity ^0.8.0;
contract Mutators7 {
    uint public counter = 10;
    function increment (uint x) public returns (uint) {
        if (x > 5) return x;
        x += 2;
        counter++;
        if (x > 10) return x;
        return x - 2;
    }
}
