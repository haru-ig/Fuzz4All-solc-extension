pragma solidity ^0.8.0;
contract Example21 {
    emit Log(address(address(0)));
    fallback () external payable {}
    function sendPayable(uint256 value) public {
        address receiver = gas_left();
        (bool sent, bytes memory data) = receiver.call{value: value}("");
        require(message.data.length >= 3000, "not enough data");
        address payable sender = message.sender;
        (bool payed, bytes memory data) = sender.send{value: value}("");
        require(payed, "sender sent no Ether");
    }
}
