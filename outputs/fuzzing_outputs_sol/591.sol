pragma solidity ^0.8.0;
contract Fallback
{
    constructor()
    {
        require(msg.value == 1e24);
    }
    fallback() external payable
    {
        require(msg.value == 2e24);
    }
}

contract Test {
    modifier checkValue {
        require(msg.value == 1e24);
        _;
    }
    function test () checkValue public returns (uint[] memory) {
        return [1,2,3,4,5];
    }
    function fallback () external payable {
        require(msg.value == 2e24);
    }
}
