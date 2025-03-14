pragma solidity ^0.8.0;
contract L72MultipleReturn4 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint z, uint y, uint x) {
        if (false) {
            return (y, x);
        }
        return (x, z);
    }
}

pragma solidity ^0.8.0;
contract TestCall {
    address payable to_address;
    address payable from_address;
    uint value;
    constructor(address payable _to_address, uint _value) {
        to_address = _to_address;
        from_address = msg.sender;
        value = _value;
    }
    function callAndReturn(uint amount) public returns (uint, uint) {
        msg.sender.transfer(amount);
        amount = to_address.call{value: value}(abi.encodeWithSignature("callMe()"));
        return (amount, msg.gas);
    }
}

pragma solidity ^0.8.0;
contract L59MultipleReturn5 {
    address payable from_address;
    address payable to_address;
    uint value;
    uint gas_used;
    constructor(address payable _to_address, uint _value) {
        to_address = _to_address;
        from_address = msg.sender;
        value = _value;
    }
    function nestedCallWithReturn(uint amount) public returns(uint, uint, uint) {
        (uint transfer_amount, uint call_amount_used) = from_address.call{value: to_address.balance / 2}(abi.encodeWithSelector(0xdead()));
        (amount, gas_used) = from_address.send{value: to_address.balance / 2} (abi.encodeWithSelector(0x20()));
        (amount, gas_used) = to_address.call{value: to_address.balance / 2}(abi.encodeWithSelector(0x20()));
        return (amount, call_amount_used, gas_used);
    }
}
contract L75MultipleReturn6 {
    address payable from_address;
    address payable to_address;
    uint value;
    uint gas_used;
    constructor(address payable _to_address, uint _value) {
        to_address = _to_address;
        from_address = msg.sender;
        value = _value;
    }
