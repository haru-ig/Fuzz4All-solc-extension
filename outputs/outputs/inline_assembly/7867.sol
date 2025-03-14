pragma solidity ^0.8.0;
contract L25 {
    constructor() public payable { }
    function modifyCalled() public {}
    function otherThing() public {
        modifyCalled();
    }
}
