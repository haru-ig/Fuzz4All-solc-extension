pragma solidity ^0.8.0;
contract C {
    uint256 staticSize;
    uint256 a;
    mapping(uint256 => uint256) public b;
    constructor() public {
        staticSize = a;
        a = 1000;
        b[a] = 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 constant MAX_LENGTH = 10**5;

    uint256 a;
    mapping(uint256 => uint256) public b;
    constructor() public {
        uint256[] memory myVar = new uint256[](MAX_LENGTH);
        a = 1000;
    }

    function c() public {
        b[a] = 2;
    }
}
