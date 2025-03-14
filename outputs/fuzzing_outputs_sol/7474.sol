pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller() public payable returns (bool) {
        bool success;
        (success,) = msg.sender.call{ value: msg.value }("");
        return success;
    }
}

pragma solidity ^0.8.0;
contract Ether {



    fallback () external payable {}

    receive () external payable {}
}
