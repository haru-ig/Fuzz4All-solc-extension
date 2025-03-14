pragma solidity ^0.8.0;
contract S {
    function callBack() public payable returns (bool)
    {
        revert("test");
    }
}
