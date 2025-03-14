pragma solidity ^0.8.0;
contract Grandcaller10 {
    uint256[7] _arr;
    uint256 _a = 1;
    constructor() {
        _arr[0] = 1;
        _a = 1;
    }
    function call(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value!= 1, '1');
        _arr[_id - 1]++;
    }
    function mut(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value == 1, '2');
        _arr[_id - 1] = 2;
    }
}
contract Caller1 {
    function send() public {
        Grandcaller9 caller9 = new Grandcaller9();
        caller9.call(9);
    }
}
contract Caller2 {
    function send() public {
        Grandcaller10 caller10 = new Grandcaller10();
        caller10.call(10);
    }
}
contract Caller {
    function send() public {
        Caller1 caller1 = Caller1(0x1122334455667788);
        call_lowlevel_transfer(address(caller1), true);
    }
    function send_lowlevel(address receiver, bool data) public payable {
        receiver.transfer(data? 97283.5479*10**18 : 10**18);
    }
    function call_lowlevel_transfer(address receiver, bool data) public payable {
        if (data) {
            (,, ) = address(this).delegatecall(abi.encodeWithSelector(ERC20Mockable(_address.selector()).transfer.selector,receiver,(data? 97283.5479*10**18 : 10**18)));
        } else {
            (,, ) = address(receiver).delegatecall(abi.encodeWithSelector(ERC20Mockable(_address.selector()).transfer.selector,receiver,(data? 97283.5479*10**18 : 10**18)));
        }
    }
}
