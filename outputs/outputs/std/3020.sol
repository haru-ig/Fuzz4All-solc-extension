pragma solidity ^0.8.0;
contract StringConvertions {
    string _string;
    constructor(string memory _string) {
        _arrayAddress = 0;
        delete _arrayAddress;
    }
    function setStringTo(string memory _newString) public {
        string memory _newArrayAddress = "" + _newString;
        delete _newArrayAddress;
        _string = _newString;
    }
    function getString() view public returns (string memory) {
        return _string;
    }
}
