pragma solidity ^0.8.0;
contract Mutators12 {
    uint public a;
    bytes16 public b;
    function mutate (bytes memory B) public {
        bytes16 T3 = b;
        if (b > a) {
            b = mutated;
        }
    }
    bytes16 mutated;
}
