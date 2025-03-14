pragma solidity ^0.8.0;
contract Mutated {
function mutate() public {
bytes32 b2 = keccak256(abi.encodePacked(
    bytes1(byte(0xff)),
    bytes32(0x13373770ca5b9100),
    b"The quick brown fox jumped over the lazy dog."
    )
);
}
}
