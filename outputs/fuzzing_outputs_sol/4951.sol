pragma solidity ^0.8.0;
contract Fallback {
    receive() external fallback {}
}

pragma solidity ^0.8.0;
contract SameFallback {
    fallback() external payable { }
    receive() external payable { }
    receive() external fallback { }
}
