pragma solidity ^0.8.0;
contract L17 {
    struct Store { uint x; }
    uint x = 0;
    function storeAdd(Store storage s1, Store storage s2) public {
        s1.x = s1.x + s2.x;
    }
}
