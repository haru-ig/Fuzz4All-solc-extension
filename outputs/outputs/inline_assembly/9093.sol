pragma solidity ^0.8.0;

contract Contract {
    function callLib() external view returns (uint) {
        return Lib.getDiv(20,2);
    }
}
