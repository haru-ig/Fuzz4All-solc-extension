pragma solidity ^0.8.0;
address A;
contract Withdraw {
    function withdrawEther(uint _amt) public {
        uint amt = _amt.mod(1000000);
        A.call.value(amt)("");
    }
    receive() external payable {}
}
