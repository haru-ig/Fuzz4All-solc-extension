pragma solidity ^0.8.0;
contract Caller {
    receive() external payable { require(true); }
    fallback() external payable {}
    receive() external pure returns(int) {
        return 0;
    }
}
