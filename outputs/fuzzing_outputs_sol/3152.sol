pragma solidity ^0.8.0;
contract Contract12Mut{
    function increase(uint256 value) public {
        num += value;
    }
}
contract Code3{
    function getNumber(uint256 x) pure public returns (uint) { return 50; }
    function test() public {
        Contract2.Test storage test = contract2.test;
        require(test.number + 1 == Contract2.test.getNumber(test.number), "number not correct after set");
    }
}
pragma solidity ^0.8.0;
contract Caller{
    function getNumber() public pure returns (uint) {
        require(msg.sender!= address(0), "sender is expected to have an address");
        return Code3.getNumber(43);
    }
    function callWithRawCall(address account) public payable {
        require(msg.value >= 43, "pay with 43 ether to account");
        Code3.test.call.value(msg.value)(address(this));
    }
    function callWithRawCallByValue(address account, uint256 value) public payable {
        require(msg.value == value, "value doesn't match");
        Code3.test.call.value(msg.value)(address(this));
    }
    function callWithRawCalls(address account) public payable {
        require(msg.value >= 43, "pay with 43 ether to account");
        Code3.test.call(address(this));
    }
}
contract Code{
    function getNumber() public pure returns (uint) { return 50; }
    fallback() external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
pragma solidity ^0.8.0;
contract Contract3{
    Contract9.fallback public fallback;
    function setFallback(AddressOfAddress contractAddr) public {
        fallback = AddressOfAddress(contractAddr);
    }
    function getAddress() public view returns(AddressOfAddress){
        return fallback;
    }
    ReceiveEther.fallback public receiveEtherFallback;
    function setReceiveEtherFallback(AddressOfAddress contractAddr) public {
        receiveEtherFallback = AddressOfAddress(contractAddr);
    }
    function callGetAddress() public view call{ }
    function callGetAddress2(address account) public view {
        Code.test.call.value(43)(msg.sender, address(this), "hi");
    }
}
pragma solidity ^0.8.0;
contract Caller2 {
    function getNumber() public pure returns(uint) { return 43; }
    function payWithEtherValue(uint256 value) publicpayable {
        require(value <= 43, "pay with 43 ether");
        require(msg.value ==
