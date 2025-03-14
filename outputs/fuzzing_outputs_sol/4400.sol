pragma solidity ^0.8.0;
contract DontCall {
    fallback() external payable{
        assert(false);
    }
    receive() external payable{}
}
contract Caller {
    fallback() external payable{
        assert(false);
    }
    receive() external payable{}
    receive() external payable{}
    receive() external payable{}
}
