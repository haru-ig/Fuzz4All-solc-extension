pragma solidity ^0.8.0;
contract Mutate40 {
    uint public a;
    uint public b;
    uint public c;
    constructor(uint256, uint256) public {
        a = 1;
        b = 2;
    }
    function set(uint256) public returns (bool) {
        a = c;
        b = 3;
        c = 4;
        return true;
    }
}

pragma solidity ^0.8.0;
contract Mutate40 {
    uint public a;
    uint public b;
    uint public c;
    constructor(uint256) public {
        a = 0;
        b = 0;
    }
    function set1111() public returns (bool) {
        a = 1;
        b = 1;
        c = 1;
        return true;
    }
    function set2222() public returns (bool) {
        a = 2;
        b = 2;
        c = 2;
        return true;
    }
}
