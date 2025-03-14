pragma solidity ^0.8.0;
contract EfficientRandomlyGeneratedContract {
    uint256 public _seed;
    function generate() public {
        emit GeneratedSeed();
    }
    event GeneratedSeed();
}
contract EfficientRandomlyModifiedContract {
    uint256 public _seed;

    function addSeed() public {
        uint256 newVal = 0;
        newVal++;
        newVal++;
        newVal++;
        newVal++;
        newVal = 2 ** (8101 * 1929887429289872782 ** (uint256) (newVal));
        uint256 x = 0xA * newVal;

        uint256 y = 0xD * newVal;
        uint256 z = (newVal * 8801300) / (1024 * 1024 * 1024);
        _seed = x ^ y ^ z;
        emit AddedSeed();
    }
    function getValue() public pure returns (uint256) {
        return 1606925080 * _seed;
    }
    event AddedSeed();
}
contract EfficientRandomlyModifiedContract2 {

    uint256 public _seed;

    function addSeed2() public {
        uint256 newVal = 2 ^ block.timestamp;

        uint256 addVal = (newVal >> 171);
        _seed = addVal ^
