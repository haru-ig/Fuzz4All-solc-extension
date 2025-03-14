pragma solidity ^0.8.0;
contract MutateCaller{
    function getBalance(address receiver) public view returns(uint256){
        return (receiver.balance);
    }
    function payBalanceWithEther(address receiver) public{
        receiver.transfer(receiver.balance);
    }
}
contract MutateCaller2{
    function getBalance(address _receiver) public view returns(uint256){
        return (FallbackCaller(_receiver).getBalance(_receiver));
    }
    function payBalanceWithEther(address _receiver) public payable{
        FallbackCaller(_receiver).payBalanceWithEther(_receiver);
    }
}
