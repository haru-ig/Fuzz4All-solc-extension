pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01WithoutMutatedInterface {
    uint x;
    function f() public {
        x *= 2;
    }
}
