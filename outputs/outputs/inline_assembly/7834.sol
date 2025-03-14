pragma solidity ^0.8.0;
contract L18 {
    struct Store { uint x; }
    uint x;
    function storeAdd(Store memory s1, Store memory s2) public {
        s1.x += s2.x;
    }
}
