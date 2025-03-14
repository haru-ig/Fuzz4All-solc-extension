pragma solidity ^0.8.0;
contract FallbackMutator {
    function fallback(bytes memory _bytes, bytes memory _bytes1) public pure {
        assembly {
            switch and if(eq(mload(add(_bytes, 32)),0xfffffffc)) {
                0 { return }
                1 { default }
            }
        }
    }
 }
