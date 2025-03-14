pragma solidity ^0.8.0;
contract Counter {
    Counter(uint _x) public {
        uint x = _x;
        uint y = x;
        x = y;
    }
}
