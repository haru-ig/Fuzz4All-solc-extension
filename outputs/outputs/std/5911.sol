pragma solidity ^0.8.0;
contract SemanticEvidentChanges6 {
    bytes memory x;
    function setAdd3(bytes memory _addr) public {
        x = _addr;
    }
    function getAdd() public view returns (bytes memory a) {
        a = x;
    }
}

pragma solidity ^0.8.0;
contract SemanticEvidentChanges7 {
    uint256 x;
    string s;
    function setAdd4(string memory _addr) public {
        s = _addr;
    }
    function addToArray(uint256 _data) public {
        x += _data;
    }
    function getAddArray() public view returns (uint256 x) {
        return x;
    }
    function getAdd() public view returns (string memory a, uint256 x) {
        a = s;
        x = x;
    }
}
