pragma solidity ^0.8.0;
contract Modul {
    function x() public{
        Modul memory _mod = Modul(0x00000000000000000000000000000000000000000);
        uint _addInput = 1;
        Modul storage _modStore = _mod;
        uint before = _mod.s;
        _mod = _mod.x();
        uint after = _mod.s;
        _mod = _mod.x();
        assert(_mod.s == s);
        assert(_mod.s - before + after == _addInput);
    }
}

pragma solidity ^0.8.0;
contract Modul {
    function x() public{
        Modul memory _mod = Modul(0x00000000000000000000000000000000000000000);
        uint _sValue = s;
        uint _decreaseValueInput = 2;
        s -= _decreaseValueInput;
        uint _xValue = Modul(0x0000000000000000000000000000000000000000000).x();
        assert(_mod.s == _sValue);
        assert(_sValue - _decreaseValueInput - _xValue == _decreaseValueInput);
    }
}
