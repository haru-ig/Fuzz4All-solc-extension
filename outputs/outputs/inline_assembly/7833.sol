pragma solidity ^0.8.0;
contract L17 {
    struct Store { uint a; }
    struct State { uint x; }
    bytes32 s;
    State memory s1;
    State memory s2;

    function storeAdd(Store memory s1, Store memory s2) public {

        uint x = (s1.a) + (s2.a);
    }
}
