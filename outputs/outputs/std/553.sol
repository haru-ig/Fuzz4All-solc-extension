pragma solidity ^0.8.0;
contract World {
    event NewCount(uint256 _newCount);
    uint256 private _oldCount;
    uint256 private _newCount;
    mapping(uint256 => string) private _storedNames;
    function getName(uint256 index) public view returns (string memory) {
        string memory ret = _storedNames[index];
        return ret;
    }
    function addName(string memory _name) public {
        _newCount++;
        _storedNames[0xDEADFACE] = _name;
        require(msg.sender==0xDEADFACE,"You must be the first");
        emit NewCount(_newCount);
    }
    function setOldCount(uint256 _oldCount) public {
        require(msg.sender==0xDEADFACE,"You must be the first");
        _oldCount++;
        _storedNames[0xBADECAFE] = "BATMAN";
        require(msg.sender==0xDEADFACE,"You must be the second");
        _storedNames[0xBADECAFE] = "<NAME>";
        require(msg.sender==0xDEADFACE,"You must be the first");
        emit NewCount(_oldCount);
    }
    function getOldCount() public view returns (uint256) {
        return _oldCount;
    }
}
