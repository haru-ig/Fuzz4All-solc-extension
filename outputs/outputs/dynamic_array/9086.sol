pragma solidity ^0.8.0;
contract SimpleStorage {
    uint8 public data[3];
    bool public dataInBool;

    function setValue(uint8 _v) public {
        data[0] = _v;
        data[1] = _v + 1;
        data[2] = _v + 2;
    }

    function getValue() public view returns(uint8) {
        return data[0];
    }
}
