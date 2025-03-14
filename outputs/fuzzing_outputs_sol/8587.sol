pragma solidity ^0.8.0;
address MyLibary;
contract CallerExample23 {
    address public myAddress;
    address public myAddress2;
    function CallerExample23() payable private {
        myAddress = msg.sender;
        MyLibary = address(this);
        myAddress2 = address(this);
    }
    function getThisAddress() public view returns (address) {
        return address(this);
    }
    function addressToCaller() public {
        Msg.sender.send(msg.value);
    }

    function sendEtherToCaller(address myAddressToTransferTo) public payable {
        myAddressToTransferTo.send(msg.value);
    }
    function test() public returns (uint){
        return myAddress2.send(abi.encodeWithSignature("addressTest()"));
    }
}
pragma solidity ^0.8.0;
contract CallerExample24{
    address public myAddress;
    function CallerExample24(address _address) public {
        require(address(this)!= _address);
        myAddress = _address;
    }
}
