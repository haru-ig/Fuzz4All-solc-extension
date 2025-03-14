pragma solidity ^0.8.0;
contract L16 {
    struct Store { uint x; }
    uint x = 0;
    function storeMultiply(Store memory s) public {
        s.x *= 3;
    }
}
