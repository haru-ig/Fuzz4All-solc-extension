pragma solidity ^0.8.0;
contract Access_array {
    uint256[] arrayOf1;
    uint256[] arrayOf2;
    address a;
    constructor(uint256[] storage _ArrayOf1) {
        a = msg.sender;
        arrayOf1 = _ArrayOf1;
    }
    function modify1() public Access_array(arrayOf1) {
        arrayOf1.push(25);
    }
    function modify2() public Access_array(arrayOf2) {

    }
    function get1() public view returns (uint256[] memory) {
        return arrayOf1;
    }
    function get2() public view returns (uint256[] memory) {
        return arrayOf2;
    }
}
