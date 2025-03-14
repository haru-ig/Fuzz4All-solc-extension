pragma solidity ^0.8.0;
contract C2 {
    receive() external payable {}
}

contract C3 {
    receive() external payable {}
    fallback() external payable {}
}
pragma solidity >0.8.0;
