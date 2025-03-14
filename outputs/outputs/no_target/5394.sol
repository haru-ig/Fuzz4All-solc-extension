pragma solidity ^0.8.0;
contract NotModified {
    uint32 i;
    constructor() public {
        i = 1 + 2;
    }

    function add() public pure returns (uint32) {
        return i++;
    }
}
contract NotModified2 {
    uint32 i;
    constructor() public {
        i = 1 + 2;
    }

    function add() public pure returns (uint32) {
        return i++;
    }

    function sub() public pure returns (uint32) {
        require(i!= 1);
        return i--;
    }
}
contract A {

}
