pragma solidity ^0.8.0;
contract Caller {
    receive() external payable { }
    fallback() external payable { }
}

pragma solidity ^0.8.0;
contract LowLevelCall {
    fallback() external payable { }
    receive() external payable { }
}
