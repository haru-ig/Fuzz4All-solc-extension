pragma solidity ^0.8.0;
contract SemanticTest7 {
    uint[] public value;
    string private constant _default0 = "this is a default.";
    constructor (string memory _default1) public {
        value.push(_default0);
    }
    function returnDefault() public view returns (string memory) {
        return _default0;
    }
}
