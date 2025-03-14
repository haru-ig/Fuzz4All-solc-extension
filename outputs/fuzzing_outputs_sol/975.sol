pragma solidity ^0.8.0;
contract CallWithFallbackMutated {
    fallback receive () external {
        bytes memory emptybuf;
        assembly {

            mstore(0x0, mload(0x40))

        }
    }
}
