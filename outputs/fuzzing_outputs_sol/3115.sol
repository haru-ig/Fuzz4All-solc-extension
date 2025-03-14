pragma solidity ^0.8.0;
contract Contract15N{

    struct Foo {
        address addressTo;
        uint value;
    }
    EventEvent15NFallback internal _eventEvent15NFallback;

    constructor() public {
        _eventEvent15NFallback.doSomething(msg.sender, 100);
    }
    function setEventEvent15NFallback(
        EventEvent15NFallback internal _eventEvent15NFallback
    ) public {
        _eventEvent15NFallback = _eventEvent15NFallback;
    }
    function doSomething(address _addressTo, uint _value) external {
        (address, uint) = addressTo.call{value:_value}("");
    }
}
contract EventEvent15NFallback is Contract15N {

    receive() external payable {
        owner.call(abi.encodeWithSignature("get", address(this)));
    }
    function doSomething(address _addressTo, uint _value) internal override {
        require(addressTo.call{value:_value}("") == (address(this), 0));
    }

    function setAddressTo(address _addressTo) public {
        addressTo = _addressTo;
    }
}
