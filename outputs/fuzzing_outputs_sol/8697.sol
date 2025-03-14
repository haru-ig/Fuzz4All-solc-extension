pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {
        assembly {
            let m := mload(0x40)
            mstore(0x0, m << 256)
        }
    }
    function fallback() public payable {}
    function call() public payable {}
}
