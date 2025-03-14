pragma solidity ^0.8.0;
contract Test30016 {
    bool private _enabled;
    address _owner;
    constructor (address _address, bool _enabled) public {
        emit NewEnabled(_address, _enabled);
        _owner = _address;
        _enabled = _enabled;
    }
    event NewEnabled(address indexed _previousOwner, bool _nowEnabled);
    modifier onlyOwner() {
        require(msg.sender == _owner, "Test30016: onlyOwner()");
        _;
    }
    function setEnabled(bool _enabled) public onlyOwner {
        emit NewEnabled(msg.sender, _enabled);
        _enabled = _enabled;
    }
}
