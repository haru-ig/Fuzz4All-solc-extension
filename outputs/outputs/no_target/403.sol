pragma solidity ^0.8.0;
contract Semantic2Changed4 {
    function isEqual(address addr1,address addr2,uint num) public pure returns (bool) {
        uint a = 0;
        require(a + num > a + addr2);
    }
}
