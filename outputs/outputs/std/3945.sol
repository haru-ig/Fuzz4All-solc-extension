pragma solidity ^0.8.0;
contract Convert {
    function conv(uint a) public pure returns(uint) {
        return a + 1;
    }
    function conv2(uint256 a) public pure returns(uint) {
        return a + 1;
    }
    function conv3(address a) public pure returns(uint) {
        return a + 1;
    }
}
