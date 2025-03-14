pragma solidity ^0.8.0;
contract Test2391 {
    uint256 x = uint256(0);
    function set(uint16 number) public {
        x = number;
    }
    function get() public view returns (uint256) {
        return x;
    }
}
