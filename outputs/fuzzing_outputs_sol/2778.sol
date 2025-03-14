pragma solidity ^0.8.0;
contract Caller4 {
    constructor() {
       uint _amount = uint(msg.value);
    }
    receive() external payable {
        uint _amount = uint(msg.value);
    }
    fallback() external payable { }
}

pragma solidity ^0.8.0;
contract Caller5 {
    address payable _receiver;
    address payable _addr;
    constructor(address payable _addr) {
       _receiver = payable(_addr);
    }
    receive() external {
       if (_receiver.balance!= uint(address(this).balance))
        _receiver.send(uint(address(this).balance));
    }
    fallback() external { }
}
