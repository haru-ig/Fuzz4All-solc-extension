pragma solidity ^0.8.0;
contract mutatedCaller{
    receive() external payable {
        assembly {
            mstore(0x00, return(0x00, 0x24))
        }
    }
    function fallback() public pure {
        assembly {
            mstore(0x00, mload(0x00))
        }
    }
    fallback() external payable {}
}
