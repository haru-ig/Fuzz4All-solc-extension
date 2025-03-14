pragma solidity ^0.8.0;
contract Mutate75 {
    uint a;
    bool b;
    uint256[] c;
    bytes32[] d;
    constructor() public {
        a = 4;
        b = false;
        c = new uint[](4);
        for(uint256 i=0; i<c.length; i++){

        }
        d = new bytes32[](4);
        for(uint256 i=0;i<c.length; i++){

        }
    }

    function getA() public pure returns (uint256) {
        return a;
    }
    function getB() public pure returns (bool) {
        return b;
    }
    function getC() public view returns (uint256[] memory) {
        return c;
    }
    function getD() public view returns (bytes32[] memory) {
        return d;
    }
}
