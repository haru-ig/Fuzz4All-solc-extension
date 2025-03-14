pragma solidity ^0.8.0;
contract Modification {
    contract Modifier {
        function canModify(address contractor, address modifyee) public view returns(bool) {
            return false;
        }
    }
    uint private _balance;
    Modifier internal modifier cannotModify(address modifyee) {
        Modifier _modifier = Modifier(
            contract(modifyee));
        if (_modifier.canModify(msg.sender, modifyee)!= false) {
            throw;
        }
        _;
    }
    function balance() public virtual constant returns (uint) {
        cannotModify(address(this));
        return _balance;
    }
    constructor(uint _balance) {
        _balance = _balance;
    }
}
