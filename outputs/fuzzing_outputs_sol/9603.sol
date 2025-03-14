pragma solidity ^0.8.0;
contract EtherFallback1 {
    function test1(uint256 x) public returns (uint256) {
        return x + 1;
    }
    function test2(uint256 x, uint256 y) public returns (uint32) {
        return x ^ y + 2;
    }
}

pragma solidity ^0.8.0;
contract EtherFallback2 {
    function test1() public view returns (uint16) {
        return 1;
    }
    function test2() public returns (uint256) {
        (uint256 a, uint8 b) = (1, 2);
        return a | b;
    }
}

pragma solidity ^0.8.0;
contract EtherFallback3 {
    function test1() public {
        bytes memory b = hex"3c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e783a786d706d65746120737a7a6b73206574616d7074206d7a726f6e6f3d22312e30223e0a3c212d2d204343525654554c4520737667205055424c49535420657420737777206574686572206275696c64206265206c697374206c79657374726174696f6e206d6f7265206d6174636820646f6e2e3c212d2d3e0a3c783a786d706d65746120786d6c6e733a783d2261646f62653a6
