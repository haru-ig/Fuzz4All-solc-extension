pragma solidity ^0.8.0;
contract Receiver {
    uint constant private val = 36;
    function set(uint _x) public {
        require(_x == val);
    }
    function failIf() public {
        if (msg.value == 80 ether) {
            msg.sender.transfer(address(address(this)).balance);
        }
    }
}
