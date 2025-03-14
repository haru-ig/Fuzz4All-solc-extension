pragma solidity ^0.8.0;
contract Mutant {
    bool private _isTranspilerApplied;
    address private _receiverAddress;
    event NewMutant(address mutantAddress);
    event Transpiler(address);
    event EtherReceived(address);
    event Caller(address);
    constructor() { _isTranspilerApplied = false; }
    modifier applyTranspiler() {
        require(
            _isTranspilerApplied == false,
            "This contructor should never be called multiple times!"
        );
        _isTranspilerApplied = true;
        _;
    }
    function setReceiverAddress(address _newReceiverAddress) public onlyOwner {
        _receiverAddress = _newReceiverAddress;
    }
    function triggerOnMutant(bytes memory) public {
        emit EtherReceived(msg.sender);
    }
    function receiveEther() public payable {
        emit EtherReceived(msg.sender);
    }
    function applyTranspilerWithoutTranspileEther() public onlyOwner {
        emit Transpiler(msg.sender);
    }
    function callMutantWithEther(bytes memory) public {
        emit Caller(msg.sender);
    }
}
