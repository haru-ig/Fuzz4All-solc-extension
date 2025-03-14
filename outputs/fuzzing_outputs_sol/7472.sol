pragma solidity ^0.8.0;
contract Caller {
    function sendRawEtherToCaller() public returns (bool) {
        bool success;
        (success,) = (address(this)).call{value : msg.value}("");
        return success;
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller() public payable returns (bool) {
        bool success = msg.sender.sendValue(msg.value);
        require(success);
        return true;
    }
    fallback () external payable {}
    receive() external payable {}
}
