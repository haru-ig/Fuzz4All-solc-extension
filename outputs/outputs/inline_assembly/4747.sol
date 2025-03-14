pragma solidity ^0.8.0;
contract mutator11 {
    int storage value;
    constructor() { value = 0; }
    bool isGreaterThanZero(uint x) internal view returns(bool){ return x > 0;}
}
