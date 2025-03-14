pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01WithMutatedInterface {
    bool x;
    function f() public {
        x |= x;
    }
}
