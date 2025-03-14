pragma solidity ^0.8.0;
contract C {
    uint[] x;
    constructor(uint[] memory _x) public {
        x = _x;
    }
}
contract C {
    mapping (uint => uint) x;
    constructor(uint[] memory _x) public {
        require(_x.length >= 11, "length lower than 10");
        x = _x;
    }
}
pragma solidity ^0.8.0;
contract C {
    uint[] static x;
    uint constant y = 1;
    constructor() public {
        require(x.length >= 11, "length lower than 10");
    }
}
