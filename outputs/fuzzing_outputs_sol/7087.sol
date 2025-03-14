pragma solidity ^0.8.0;
contract ReversedCallerMutator {
    function mutatedFallback() public payable {
        require(msg.value == msg.data.length);
    }
    function fallback() public payable {

        bytes memory data = abi.encode(address(address(this)));
        bytes32 keccak256 = keccak256(data);
        assembly
        {
            switch returndatasize
            case 32 m {
                revert(add(m, add(add(keccak256, 32), acc), acc), m, 0)
            }
            32 m
            revert(ksub(add(keccak256, 32), m, ksub(add(data, 32), m, acc), acc)), m, 0)
        }
    }
}
