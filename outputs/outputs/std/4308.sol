pragma solidity ^0.8.0;
contract Multiversion
{
    bytes32 internal constant EMPTY_BYTES32 = 0xd471046e165af8e977fd266d42d5a6865151199cd015178e0f94801e3b8b7ae1;
    uint32 internal constant EMPTY_UINT32 = 0xd471046e165af8e977fd266d42d5a6865151199cd015178e0f94801e3b8b7ae1;

    function new() public pure returns (address) {
        return address(new BaseLib());
    }

    function new(uint n) public pure returns (address) {
        return address(new BaseLib(n));
    }

    function new(string memory) public pure returns (address) {
        return address(new BaseLib());
    }
}
