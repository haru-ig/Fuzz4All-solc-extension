pragma solidity ^0.8.0;

contract TestMutator is Mutator {
}
contract PayableMutator is Mutator {
    address payable target;
    constructor() {
        target = payable(address(this));
    }
    function setTarget(address payable _target) public {
        target = _target;
    }
}
contract Caller {
    address target;
    function method() public payable {
        target.transfer(tx.value);
    }
}
contract Caller2 {
    address target;
    constructor() {
        target = payable(address(this));
    }
    function method() public payable {
        target.transfer(tx.value);
    }
}
contract Caller3 {
    address target;
    constructor() {
        target = payable(address(this));
    }
    function method() public payable {
        uint256 _value = 1 ether;
        target.transfer(_value);
    }
}
contract Caller4 {
    address target;
    constructor() {
        target = payable(address(this));
    }
    function method() public payable {
        bytes memory _data = hex"6060604052348015600f57600080fd5b506000600080359060200190810160405290810190602001909101604052600436106032577806000357c01000000000000000000000000000000000000000000000900463ffffffff168063239919dd1461003c578063d1ecda0bf1461003e575b600080fd5b348015600f57600080fd5b506000600080359060200190810160405290810190602001909101604052600436106032577806000357c0100000000000000000000000000000000000000000000000090049060005260206
