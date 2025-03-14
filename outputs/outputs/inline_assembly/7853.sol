pragma solidity ^0.8.0;
contract L24{
    constructor() public payable { }
    function modifyCalled() public {
        new L23{ value: address(this).balance * 8 }.modifyCalled();
    }
}
