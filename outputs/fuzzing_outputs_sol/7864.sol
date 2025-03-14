pragma solidity ^0.8.0;
contract EquivalentFallbackExample3 {
    function () external payable {

    }
}
contract Caller {

    function sendEtherToContractWithFailingFallback(uint256 amount) public payable {
        bytes memory empty = bytes(0);
        (bool success, ) = address(this).call(amount, empty);
        require(success, "Sender failed to send Ether");
    }

    function sendEtherCallWithSuccess() public payable returns(uint256) {
        bytes memory empty = bytes(0);
        (bool success, ) = address(this).call.value(msg.value)(empty);
        require(success, "Sender failed to send Ether");
        return msg.value;
    }

    function sendEtherCallWithoutSuccess() public payable external {
        bytes memory empty = bytes(0);
        (bool success, ) = address(this).call.value(msg.value)(empty);
        require(success, "Sender failed to send Ether");
        return msg.value;
    }
}
