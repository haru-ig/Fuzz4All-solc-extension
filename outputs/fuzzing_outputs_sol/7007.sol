pragma solidity ^0.8.0;
contract Test {
    string memory text;
    uint internal x;
    function set(string memory a) public {
        text = a;
    }
    function mutatedGet() public returns (string memory){
        return text;
    }
}
