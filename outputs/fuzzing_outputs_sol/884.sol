pragma solidity ^0.8.0;
contract Caller {
    address _target;
    address _fallback;
    constructor(address target, address fallback) {
        _target = target;
        _fallback = fallback;
    }
    function deploy() public returns (address) {
        return address(new MutatedCalls());
    }
    modifier onlyTarget() {
        require(msg.sender == _target, "Caller: caller not the target");
        _;
    }
    function call() public payable {
        _target.call{ gas: 9585 }("");
        msg.sender.call{ gas: 9585 }("");
    }
    function fail() public onlyTarget {
        _fallback.call{ value: _target.balance }("");
    }
}
