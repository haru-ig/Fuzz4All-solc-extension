pragma solidity ^0.8.0;
contract C {
    constructor() public payable {}
     constructor(address _p) public { address(uint(-3)).transfer(_p);}
    function getValue() public view returns (uint) {
        uint b = 4;
        uint a = 3;
        uint c = 1;
        uint result = 0;
        assembly {
            result := a - c + b
        }
        return result;
    }
}
