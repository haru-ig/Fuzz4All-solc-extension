pragma solidity ^0.8.0;
contract Caller {
    uint constant private val = 36;
    function failIf() public {
        if (msg.value == 80 ether) {
            revert();
        }
    }
    uint public get;
    function set(uint _x) public {
        require(_x == val);
    }
}
