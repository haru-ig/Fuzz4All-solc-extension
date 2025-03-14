pragma solidity ^0.8.0;
contract R5{
        string str;
    constructor(string memory _string) public {
        str = _string;
    }
    function set(string memory new_string) public{
        str = new_string;
    }
    function get() public view returns (string) {
        return str;
    }
}
