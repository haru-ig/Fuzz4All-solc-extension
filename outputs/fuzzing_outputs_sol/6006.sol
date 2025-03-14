pragma solidity ^0.8.0;


contract Mutated {
}

contract MutatedContract {

    Interface1 theInterface1;
    Interface2 theInterface2;



    uint private _state = 0;
    Address private _senderAddress;

    constructor (address senderAddress) {

        _senderAddress = senderAddress;

        theInterface1 = address(new Interface1());
        theInterface2 = address(new Interface2());
    }



    receive() external payable {
        uint newAddress = address(msg.sender);
        _senderAddress = newAddress;
    }

    function setState(uint newState) external {
        _state = newState;
        _senderAddress = new Address(_state);
    }

    function getInterface() external view returns(Interface1, Interface2) {
        Interface1 _interface1 = Interface1(theInterface1);
        Interface2 _interface2 = Interface2(theInterface2);
        return (_interface1, _interface2);
    }

    function setInterfaceToAddress(address addr) public {
        IERC721(addr).balanceOf(_senderAddress);
        this.theInterface2 = IERC721(addr);
    }
    function setInterfaceToInterface1(Interface1 interface1) public {
        this.theInterface1 = interface1;
    }
}
contract MutatedContractFactory {

    address private _senderAddress;

    constructor (address senderAddress) {
        _senderAddress = senderAddress;

        Mutated mutated = new Mutated();
        theMutatedContractInstance = mutated.deployMutated(_senderAddress);
    }

    Mutated theMutatedContractInstance;
