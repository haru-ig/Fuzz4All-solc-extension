pragma solidity ^0.8.0;
contract SemanticallyEquivalenty23 {
    event Log(address value1, string value2, string value3);
    constructor () public {
        _emit("50.5", "2021-05-17", "2056-04-27");
        _emit("30.00", "05-17 2021", "04-27 2056");
    }
    function _emit(string memory value1, string memory value2, string memory value3) private {
        string memory log = abi.encode(value1, value2, value3);
        emit Log(0x11111111111111111111111111111111111111, log, "");
    }
}
}
