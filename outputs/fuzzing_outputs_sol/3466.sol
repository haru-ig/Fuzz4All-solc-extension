pragma solidity ^0.8.0;
contract Storage {
        function call() public pure {
            assembly {
                let x
                let n
                mstore(add(x, 0x40), mload(n))
                mstore(n, 0x37312720)
            }
        }
    }
}
