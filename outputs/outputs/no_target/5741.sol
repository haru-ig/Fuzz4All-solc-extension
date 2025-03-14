pragma solidity ^0.8.0;
contract Baz {
    IERC20 token;
    uint256 _uint;
    bytes1 _bytes1;
    uint8 _u8;
    bytes _bytes;
    address _address;
    bool y;
    receive() external payable {
        y = true;
    }
}
