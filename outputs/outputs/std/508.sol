pragma solidity ^0.8.0;
contract test {
    uint256[5];
    uint256 a;
    uint256 b;

    constructor () {
        a = 3;

    }

    function getBigger() public view returns (uint256 x2){
        uint x = 3;
        return x + x;
    }
}
