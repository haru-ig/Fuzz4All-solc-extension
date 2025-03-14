pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test38 {
    function nestedf() internal pure returns(uint[] memory) {
        uint[] memory b = new uint[](10);
        b[2] = 10;
        return b;
    }
}
