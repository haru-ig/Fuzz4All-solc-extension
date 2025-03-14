pragma solidity ^0.8.0;
contract MutateMath {
    function squareRoot() public pure returns (uint32) {
        return 1;
    }
    function powerOf2(uint16 n) public pure returns (uint32) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract MutateFlags {
    address public owner;

    constructor () payable {
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "Mutated: Only the owner is permitted.");
        _;
    }
    function addFlags(bool flag1, bool flag2) internal {
        flag1 ^= flag2;
    }
}
