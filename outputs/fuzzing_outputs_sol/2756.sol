pragma solidity ^0.8.0;
contract Caller3 {
    uint counter;
    function _fallback() public payable {
    }
    receive() external payable {
        uint i;
        for(i; i >= 0; i--)
            counter += 1;
        counter += 10;
    }
    fallback () external payable {
    }
}
