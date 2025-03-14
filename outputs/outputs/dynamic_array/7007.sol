pragma solidity ^0.8.0;
contract Test8 {
    uint96[] public _a;
    constructor() public {
    	_a.push(100000000000000000000000000000000000000000000000000000000000001);
    }
    function getA() public view returns(uint96[] memory) {
        return _a;
    }
}
