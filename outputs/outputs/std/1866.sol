pragma solidity ^0.8.0;
import "./RandomizeInterface.sol";
contract Example {
    RandomizeInterface randomizer;
    uint256 a = 2;
    constructor() public {
        randomizer = RandomizeInterface(0x00);
    }
    function main() external {
        bytes memory arrayIn = randomizer.randomBytes(2);
        bytes memory randomBytesOut = randomizer.randomBytes(9);
        uint256 testValueOut = uint256(uint8(randomBytesOut[8] >> 7));
        uint x = uint(uint16(arrayIn));
        a = a + x - testValueOut;
    }
}
