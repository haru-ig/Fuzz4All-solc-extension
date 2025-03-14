pragma solidity ^0.8.0;
contract MutateBigInt15 {
    uint256 internal constant maxValue = 0xFFFFFFFFFFFFFFFF;

    constructor(uint256 _val) public {
        require(_val <= maxValue, "value of _val can't exceed max uint 256");
        x = _val;
    }
}

pragma solidity ^0.8.0;
contract MutateByte {
    uint8 y;
    constructor(uint8 _y) public {
        y = _y;
    }
}
