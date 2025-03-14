pragma solidity ^0.8.0;
contract Test {
    mapping (uint => uint) private _balances;
    event Transfer(address indexed from, address indexed to, uint value);
    receive() external payable{
        emit Transfer(msg.sender, msg.sender, msg.value);
    }
}
contract Caller{
    function call() public payable {
        (bool success, bytes memory output) = address(0x123).call{value:1}(0xdeadbeef);
        require(success,"Contract executed successfully!");
    }
}
