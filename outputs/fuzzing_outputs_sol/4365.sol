pragma solidity ^0.8.0;
contract Mutator {
    receive() payable external{
        bytes memory empty = bytes(0);
        bytes memory empty1 = bytes(keccak256(abi.encodePacked(empty)));
        bytes memory empty2 = emptyCall();
        assert(keccak256(abi.encodePacked(empty)) == keccak256(abi.encodePacked(bytes1.calldata(abi.encode(empty)))))
    }
    bytes1 emptyCall() public pure returns(bytes1 r) {
        r = bytes1(0xab);
    }
}
