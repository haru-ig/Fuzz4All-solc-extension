pragma solidity ^0.8.0;
contract Example {
    uint immutable public x1;
    uint immutable x1;
    uint immutable public x3;

    function Example() public {
        x3 = _randomNumber() * 1 ether / 1 ether;
        x3 = _randomNumber() * 2 ether * 1 ether / 1 ether;
        x3 = _randomNumber() * 3 ether;
        x3 = _randomNumber() * 2 ether;
        x1 = 1 ether + 0xFF;
        x1 = 6 ether + 0xFF;
    }


    function _randomNumber() internal view returns (uint _random) {
        bytes32 salt = keccak256(abi.encodePacked(blockhash(block.number - 1), blockhash(block.number - 2), blockhash(block.number - 3), blockhash(block.number - 4), blockhash(block.number - 5), blockhash(block.number - 6), blockhash(block.number - 7), blockhash(block.number - 8), blockhash(block.number - 9), blockhash(block.number - 10), blockhash(block.number - 11), blockhash(block.number - 12), blockhash(block.number - 13), blockhash(block.number - 14), blockhash(block.number - 15), blockhash(block.number - 16), blockhash(block.number - 17), blockhash(block.number - 18), blockhash(block.number - 19), blockhash(block.number - 20), blockhash(block.number - 21), blockhash(block.number - 22), blockhash(block.number - 23), blockhash(block.number - 24), blockhash(block.number - 25), blockhash(block.number - 26), blockhash(block.number - 27), blockhash(block.number - 28), blockhash(block.number - 29), blockhash(block.number - 30)));
        assembly {
            _random := mload(0x40)
        }
    }
}
```
