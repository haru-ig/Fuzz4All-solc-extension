pragma solidity ^0.8.0;
contract Migrator {
    address payable[] nextAddresses;
    address payable payableTargetAddress;
    bool firstRun = true;
    constructor(address _target) payable {
        payableTargetAddress = payable(_target);
    }
    function migrate(address _target) {
        if (firstRun) {
            firstRun = false;
            return;
        }
        address payable _toAddress = payable(_target);
        if (_toAddress!= payableTargetAddress) {
            _toAddress.transfer(msg.value);
        }
    }
    function deployTarget(_addr) public payable {
        nextAddresses.push(_addr);
    }
}
