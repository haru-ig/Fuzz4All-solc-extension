pragma solidity ^0.8.0;
contract OldSemantics {
    uint256 internal value;
    receive() external { value += msg.data.length; }
}
contract NewSemantics {
    uint256 internal value;
    receive() external { value += msg.data.length; }
}
