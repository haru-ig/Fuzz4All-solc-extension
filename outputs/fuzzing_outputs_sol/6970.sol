pragma solidity ^0.8.0;
contract Modifier {
    function read() public view returns(uint){
        return 100;
    }
}

contract Caller {
    Modifier public modifierOnlyToMe() {
        require msg.sender == address(this), "Forbidden";
        _;
    }
    function doCall() public payable {
        modifierOnlyToMe.call();
        emit DoCall(msg.sender, msg.value);
    }
}
