pragma solidity ^0.8.0;
contract Example19 {
    uint256[30] calldata storage array;

    fallback() external payable {
        array[29] = 40;
    }

    receive() external payable {
        array[29] = 39;
        assembly {
            calldatacopy(0, 0, calldatasize())
            return(buffer)
        }
    }
}
