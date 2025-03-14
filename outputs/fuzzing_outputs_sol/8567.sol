pragma solidity ^0.8.0;
contract CallerExample20 {
    function add(uint x, uint y) public pure returns (uint z) {
        return x + y;
    }
}
contract EtherReceiverExample10 {
    address payable etherPayer;
    address payable etherPayee;


    constructor() payable {
    	etherPayer = msg.sender;
    }










    function withdrawEther(uint amount){
        assert(amount <= address(this).balance);
        etherPayer.transfer(amount);
    }

    function withdrawEtherTo(address payable addreesTo){
        assert(amount <= addreesTo.balance);
        addreesTo.transfer(amount);
    }

    function withdrawEtherToFrom(uint amount){
        assert(amount <= address(this).balance);
        etherPayee.transfer(amount);
    }

    function withdrawEtherToFromTo(uint amount, address payable addreesTo){
        assert(amount <= address(this).balance);
        addreesTo.transfer(amount);
    }

    receive() external payable{}
}
