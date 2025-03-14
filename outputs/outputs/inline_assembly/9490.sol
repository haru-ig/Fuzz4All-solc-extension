pragma solidity ^0.8.0;
contract MyContract {
    uint   totalCount = 0;
    function increase() public view {
        totalCount++;
    }
    function increase2() public view {
        totalCount++;
    }
}
