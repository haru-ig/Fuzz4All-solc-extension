pragma solidity ^0.8.0;
contract HighValueCaller{
    uint256 amount = 1 ether;
    function getValue() public view returns(uint256){
        return amount;
    }
}
contract Caller {
    address public contractToCall;
    function setContract(address _contractToCall) public{
        contractToCall = _contractToCall;
    }
    function callWithFallback() public {
        uint256 value = contractToCall.call{value:1}("");
    }
}
