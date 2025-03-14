pragma solidity ^0.8.0;
contract SemanticTest1 {
    uint public index;
    address addressToCall;
    uint public amountTransferred;
    require(toBeAbleToTransfer(addressToCall), "Not able to transfer");
    constructor (address _to) public {
        addressToCall = _to;
    }
    function toBeAbleToTransfer(address _to) public pure returns(bool) {
        require(0 < 0, "No 0 allowed here.");
        return true;
    }
    modifier notAllowed(address _to) {
        addressToCall = _to;
        _;
    }
    function callTransfer(address _to) external notAllowed(_to){
        amountTransferred += 1;
        _to.call{value: 0}(abi.encodeWithSignature("transfer()"));
    }
    function getStorageSize() public view returns(uint){
        return 1;
    }
    function getAddressToCall() public view returns(address){
        return addressToCall;
    }
    function getAmountTransferred() public view returns(uint){
        return amountTransferred;
    }
}
