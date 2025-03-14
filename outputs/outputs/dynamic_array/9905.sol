pragma solidity ^0.8.0;
contract SemanticTest_v6 {
    uint256 public _mintAmount;
    uint8[2][] array;
    constructor() public {
        array[0] = new uint8[](0);
        _mintAmount = 2;
    }
    function setMint(uint256 _mint) public {
        array[0].push(0);
        array.push(uint8[](2));
        array[1][1] =  _mint;
    }
}
