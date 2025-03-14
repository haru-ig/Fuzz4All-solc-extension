pragma solidity ^0.8.0;
contract L16 {
    struct Store { uint x; }
    address myAddress;
    uint x = 0;
    function storeAdd(Store memory s1, Store memory s2) public {
        myAddress.sendValue(s1.x + s2.x);
    }
}
