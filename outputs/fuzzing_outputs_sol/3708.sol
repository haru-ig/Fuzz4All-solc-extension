pragma solidity ^0.8.0;
contract Example9 {
    Event FOO;

    address payable _fallback;
    uint a;
    constructor(uint _a) {
        a = _a;
        FOO.emit(msg.sender, _a);
    }

    receive () external payable {
        _fallback.transfer(msg.sender, a);
    }
    fallback() external { FOO.emit(msg.sender, a); }
}


code_05b_40867660836048ba8063_73_45
