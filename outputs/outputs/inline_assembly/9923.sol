pragma solidity ^0.8.0;
contract D {
    uint256 public constant value = 5;
    uint256 public x;
    constructor() {
        x = value;
    }

    function update() public returns (uint256) {
        x = 6;
        return 10x - value;
    }
}

pragma solidity ^0.8.0;
contract E {
    constructor() {
        inlineTest();
    }

    function inlineTest() public returns (uint256 x)  {
        x = 1000000;
        inlineAdd();
        inlineSub();

    }

    function inlineAdd() public returns (uint256)  {
        uint256 r = 20;
        return (uint256(uint256(r -3) + 11));
    }

    function inlineSub() public returns (uint256)  {
        uint256 r = 50;
        return (uint256(uint256(r -7) - value));
    }
}
