pragma solidity ^0.8.0;
contract C24{
        function c() public payable{
                assembly {
                        delegatecall(calldatacopy(calldatasize(), 0, calldatasize()), 0, 0)
                }
        }
}
