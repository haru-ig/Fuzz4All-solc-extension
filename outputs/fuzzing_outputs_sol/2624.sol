pragma solidity ^0.8.0;
contract Caller {
    fallback(address _destination, uint256 _value, bytes memory _data) external payable {}
}
