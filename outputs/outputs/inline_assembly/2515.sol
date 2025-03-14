pragma solidity ^0.8.0;
contract Comp3 {
    mapping (address  => uint) private _mapping;
    constructor() public {

        _mapping[address(this)] = 1;
    }
    function accessFromContract() public view returns(uint) {
        return _mapping[address(this)];
    }
    function addIncreasingEntries() public {
        _mapping[address(this)] += 1;
        _mapping[address(this)] += 1;
    }
    function addDecreasingEntries() public {
        _mapping[address(this)] -= 1;
        _mapping[address(this)] -= 1;
    }
    function printMappedContent() public {

        for (uint i = 1; i < 10 ; i++) {
            require(_mapping[address(this)] == 1 + i, "Mapping error");
        }
    }
}
