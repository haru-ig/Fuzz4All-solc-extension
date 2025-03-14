pragma solidity ^0.8.0;
contract SemanticCheckMutated5 {
    constructor() {
    }




    function get() public pure returns (uint) { return 0x123; }
    function set(uint _x) public pure returns (uint) { return _x; }

    function check(uint _a) public pure {
        if (keccak256(abi.encodePacked(get(),_a))!= keccak256(abi.encodePacked(get(),0x123))) {
            revert("Invalid");
        }
    }
    function check2(uint _a, uint _b) public pure {
        if (keccak256(abi.encodePacked(get(), _b, _a))!= keccak256(abi.encodePacked(get(),0x123,0x456))) {
            revert("Invalid");
        }
    }
}
