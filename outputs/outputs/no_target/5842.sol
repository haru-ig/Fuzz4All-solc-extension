pragma solidity ^0.8.0;
contract C5 {
    string private p;
    function getstring() public view returns (string memory) {
        string memory q;
        assembly {
        q := p
        }
        return q;
    }
}
