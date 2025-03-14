pragma solidity ^0.8.0;
contract C {
    uint private x;
    constructor(){
        x = 100;
    }
    function useX() public {
        x = 150;
    }
}
