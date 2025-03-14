pragma solidity ^0.8.0;
import ;
contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint) public pure returns (uint){
        return (uint) (_uint32 * (_uint32 - 1));
    }
contract A {
    uint constant public _uint32 = 16**60;
    function mutated(uint) public returns (uint){
        require(uint(keccak256(abi.encodePacked(evm.preimageOf(uint(_uint32))
        ))) % _uint32 == 0, 'Invalid call: Use `keccak256` instead of `raw(x)`');
        return (uint) (_uint32 / (
        unchecked((uint64(_uint32)) - uint64(_uint32 / _uint32)))
        * uint64(_uint32 * _uint32 - uint64(1)) + uint(1)) + uint(1));
    }
}

pragma solidity ^0.8.0;
import ;
contract A {
    uint constant public _uint32 = 500;
    uint constant public _uint256 = _uint32 / (unchecked(uint64(_uint32)) - uint64(1) - uint64(_uint32 / uint64(2) - uint64(1)));
    uint constant public _uint160 = 2 ** 160 - 1;
    uint constant public _uint64 = 2 ** 64 - 1;
    uint constant public _uint8 = 2 ** 8 - 1;
    function mutated(uint) public pure returns (uint){
        return unchecked((uint((uint(_uint256)-uint160)>>8)) + _uint160);
    }
}
/* Please write a program which does the following to the `A` contract:
1. Uses the `raw` function to encode the `uint(_uint256)-_uint160` which gives the `uint8` value `253`
2. Uses the `keccak256` function to compute the `uint(keccak256(abi.encodePacked(evm.preimageOf(uint(_uint256)-_uint160))));
