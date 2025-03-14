pragma solidity ^0.8.0;
contract G8 {
    mapping(uint32 => uint[]) _data;
    function G8modifier() internal virtual G8modifierWithInput(1), G8modifierWithMultipleInputs(2, 7) {}
    constructor() public G8modifier()  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}
