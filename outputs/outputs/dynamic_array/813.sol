pragma solidity ^0.8.0;
contract MySmartContract is MyLib {
    bool[4] public x = [true, false, true, false];
    bool[5] public y = [true, true, true, false, false];
    function isFalse(bool _x) pure public returns(uint) { return 0; }
}

pragma solidity ^0.8.0;
contract MySmartContract {
    bool[4] public x = [true, false, true, false];
    bool[5] public y = [true, true, true, false, false];
    function isTrue(bool _x) pure public returns(uint) {
        if (_x) { return -1; }
        return 1;
    }
    function isFalse(bool _x) pure public returns(uint) {
        if (!_x) { return -1; }
        return 1;
    }
}
