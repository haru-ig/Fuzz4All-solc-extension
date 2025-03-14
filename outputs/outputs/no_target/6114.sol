pragma solidity ^0.8.0;
contract Mod_12_4_v10 {
    Mod_123 _contract;
    modifier contractMod(Mod_123) {
        _contract = Mod_123(msg.sender);
        _;
        _contract = 0;
    }
    function () payable returns (bool) {
        _contract.mod_123(msg.value);
        uint res = _contract.mod_123(msg.value);
        res = _contract.mod_123(--((uint)0));
        res = _contract.mod_123(--((uint)0));
        return true;
    }
}
