pragma solidity ^0.8.0;
contract M12 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 0.6;
        y = 2;
        z = 5;
    }
    function modifyX2() public { x *= 2; }
    modifier M(uint256 p) { x = p; _; }
    function modifyX() public M(2) { x = 6;}
}

pragma solidity ^0.8.0;
contract M13 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 0.6;
        y = 2;
        z = 5;
    }
    function modifyX2() public { x *= 2; }
    modifier M(uint256 p) { x = p; _; }
    function modifyX() public M(2) { modifyX2; }
}
