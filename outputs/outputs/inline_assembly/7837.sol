pragma solidity ^0.8.0;
contract L19 {
    struct Store { uint x; }
    function storeAdd(Store memory s1, Store memory s2) public pure {
        uint s1x;
        uint s2x;
        assembly{
            s1x := s1.x
            s2x := s2.x
        }
        s1x += s2x;
    }
}
