pragma solidity ^0.8.0;
contract Test {
    function set() public {
    }
    function get() public view returns (uint256){
        return x;
    }
    function mutatedGet() public mutates returns (uint256){
        return x;
    }
    uint internal x;
}
