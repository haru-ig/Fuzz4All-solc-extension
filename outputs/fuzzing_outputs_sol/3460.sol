pragma solidity ^0.8.0;
contract Mutated {
    function call() public pure {
        assembly {
            let n
            mstore(add(n, 0x30), mload(n))
            mstore(add(n, 0x80), mload(add(n, 0x40)))
        }
    }
}
contract Caller is Storage, Mutated {
    constructor() {
        Storage.call();
    }

    receive() external payable{ }
}
