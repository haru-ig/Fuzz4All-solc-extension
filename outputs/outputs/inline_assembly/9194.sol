pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
        bytes memory b = hex"3230313000000000000000000000000000000000000000000000000000000000";
        return (uint) (_uint32 * _uint32 * (uint(b)));
    }

}

contract A {
}

contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
        bytes memory b = hex"32303130000000000000000000000000000000000000000000000000000000";
        return (uint) (bytes32(b) * (uint(_uint32) * _uint32));
    }
}
