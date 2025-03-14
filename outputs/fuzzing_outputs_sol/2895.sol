pragma solidity ^0.8.0;
contract Caller{
    address token;
    fallback () external payable {
        return ;
    }
    function() external {
        require(msg.value < 1 ether);
        token.transfer(msg.value);
    }
}
