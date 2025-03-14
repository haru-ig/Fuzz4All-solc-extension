pragma solidity ^0.8.0;
contract Mutate {
    Mutate2 constant X = new Mutate2();
    uint256 constant A = 11;

    function mutate() public {
        X.x = A;
    }
    function randomUint() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp))) % 1000000000;
    }
    function randomUint8() public view returns (uint8) {

        return uint8(X.x / 1000);
    }
    function randomArrayUint() public view returns (uint256[] memory) {
        uint256[] memory randoms = new uint256[](10);
        for (uint256 i = 0; i < randoms.length; i++) {
            randoms[i] = randomUint();
        }
        return randoms;
    }
    function randomArrayUint8() public view returns (uint8[] memory) {
        uint8[] memory randoms = new uint8[](10);
        for (uint256 i = 0; i < randoms.length; i++) {
            randoms[i] = randomUint8();
        }
        return randoms;
    }
}
