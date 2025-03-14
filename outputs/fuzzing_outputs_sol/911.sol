pragma solidity ^0.8.0;
contract SecondFallback {
    receive() external {
        assembly {
            mstore(0x10, mload(0x10))
            return(0,0)
        }
    }
    fallback() external {
        assembly {


        }
    }
}
