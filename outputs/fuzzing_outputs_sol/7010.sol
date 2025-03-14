pragma solidity ^0.8.0;
contract Caller{
    uint internal x;
    fallback() external payable {
        emit Log();
    }
    function set() public {
        emit Log();
        x = 42;
    }
    function mutatedGet() public returns (uint){
        return 42;
    }
    event Log();
}
