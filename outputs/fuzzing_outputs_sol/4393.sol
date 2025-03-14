pragma solidity ^0.8.0;
contract Error {
    fallback() external payable{}
}
contract ErrorWithFallback {
    fallback() external payable{
        assert(false);
    }
    receive() external payable{}
}
