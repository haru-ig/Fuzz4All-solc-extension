pragma solidity ^0.8.0;
contract M22 {
    mapping (uint16 => bool) public x;
    uint16 public y;
    uint16 public z;
    constructor () public { }
}

pragma solidity ^0.8.0;
contract M33 {
    mapping (uint16 => uint16) public x;
    uint16 x;
    uint16 public y;
    uint16 public z;
    constructor () public {
        x++;
    }
    function greeter() public pure returns (uint16) {
        return 1;
    }
}
