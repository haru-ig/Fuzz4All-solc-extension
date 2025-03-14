pragma solidity ^0.8.0;
struct Mutated {
        uint256 a;
        constructor(uint256 _a) public payable {
            a = _a+1;
        }
}
