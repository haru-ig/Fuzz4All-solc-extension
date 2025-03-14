pragma solidity ^0.8.0;
contract Caller{
        address receiver;

        fallback() external payable returns (uint){
                emit Emitted();
                return 1;
        }
}
