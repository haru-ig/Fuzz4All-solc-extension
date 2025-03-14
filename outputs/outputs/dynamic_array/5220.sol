pragma solidity ^0.8.0;
contract Test38 {
    function f(uint[] storage, uint[] memory) internal pure returns () {
        uint[] storage x = new uint[](3);
        x[0] = 0;
        return;
    }
}
