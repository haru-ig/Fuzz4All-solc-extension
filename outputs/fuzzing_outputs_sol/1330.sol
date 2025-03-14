pragma solidity ^0.8.0;
contract Contract {
    uint[] public data;
    constructor() public {
        data.push(0);
    }
    fallback function() public payable {
       emitLog();
    }
    function emitLog() public {
        data.push(1);
        emit Log(1);
    }
    function setIntValue(int _value) public {
        data.push(_value + 1);
        emit Log(_value + 1);
    }
    function SetStringValue(string memory _value) public {
        data.push(uint8(_value));
        emit Log(uint8(_value));
    }
    function SetAddressValue(address _value) public {
        data.push(_value);
        emit Log(_value);
    }
}
