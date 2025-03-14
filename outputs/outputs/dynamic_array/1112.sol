pragma solidity ^0.8.0;
contract Test {
    uint256 _number;
    uint256[] _data;
    function getNumber() public view returns(uint256) {
        return _number;
    }
}
