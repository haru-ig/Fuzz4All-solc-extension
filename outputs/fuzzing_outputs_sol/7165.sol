pragma solidity ^0.8.0;
contract Caller {
    function makeCall(ExampleContract payable _a) public payable {
        _a.transferFrom(msg.sender, address(this), _a.balance);
    }

    function getContractAddr() public view returns (address) {
        return address(0x39299fB1F4b8794261251B3AD96f4538e6A8C349);
    }
}
contract ExampleContract {



    Example2 contract2;
    function initialize(address _addr) public {
        contract2 = Example2(_addr);
        contract2.setCheckFor(callContract());
        console.log(contract2.isValid());
        console.log(contract2.getCheckFor());
    }
    function callContract() public returns (address) {
        return Caller.getContractAddr();
    }
}
