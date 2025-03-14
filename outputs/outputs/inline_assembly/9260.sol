pragma solidity ^0.8.0;
event Log(bytes);
contract B {
    function send() public view returns (bytes memory) {
        assembly {

            mstore(0, 1)
            mstore(137, 0x55)
            calldatacopy(0, 2, mload(0), 137)
            returndatacopy(2, 0, mload(137), 49)
            return(0, 49)
        }
    }
}
