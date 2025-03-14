pragma solidity ^0.8.0;

contract HelloWorld {
    uint256 private _count;
    string[] private _names;

    constructor() {}

    function getName(uint256 index) public view returns (string memory) {
        return _names[index];
    }

    function setName(uint256 index, string memory _name) public {
        require(_count <=9, "Name is beyond the limit");
        _names[index] = _name;
    }

    function countStorage() public view returns (uint256) {
        return _count;
    }

    function addName(string memory _name) public {
        _names.push(_name);
        _count += 1;
    }
}
