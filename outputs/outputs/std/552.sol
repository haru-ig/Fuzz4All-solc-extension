pragma solidity ^0.8.0;
contract HelloWorld {
    uint256 private _count;
    string[] private _names;
    constructor() public {
        _count = 10;
        _names = new string[](10);
        _names.length = 10;
        for (uint256 i = 0; i < _count; i++) {
            _names[i] = 'Hello world '+ toString(i);
        }
    }
    string memory private toString(uint256 _index) internal pure returns (string memory) {
        if (_index % 10 == 0) {
            return 'th';
        }
        if (_index % 10 == 1) {
            return 'e';
        }
        if (_index % 10 == 2) {
            return 'x';
        }
        if (_index % 10 == 3) {
            return 'i';
        }
        return string(_index.toString().substr(2, 1));
    }
    function count() public view returns (uint256) {
        return _count;
    }
    function addName(string memory _name) public {
        _names[9] = _name;
        _names.length   = 10;
        _count += 1;
    }
}
