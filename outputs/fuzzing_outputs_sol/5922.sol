pragma solidity ^0.8.0;
contract EtherReceiver {
    function withdrawEther (uint amount) public {}
    function payTo (address payable payee) public payable {}
    receive() external payable {
    }
}
contract EtherReceiver {
    function withdrawEther (uint amount) public {}
    function payTo (address payable payee) public payable {}
    receive() external payable {
        if (address(this).balance >= amount) {
            payee.transfer(amount);
        }
    }
}
