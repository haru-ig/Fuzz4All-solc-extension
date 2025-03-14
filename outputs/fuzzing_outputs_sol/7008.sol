pragma solidity ^0.8.0;
contract Test {
    uint[10] internal stateX;
    function getStateValues() public view returns (uint[10]){
        return stateX;
    }
}
