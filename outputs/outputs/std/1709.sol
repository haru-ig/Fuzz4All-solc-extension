pragma solidity ^0.8.0;
contract Array {
    using Mutated for Mutated.Log;
    function newArrayOfRandomness(uint size) external pure returns (Mutated.Log memory a) {
        bytes32 value;
        a = Muatated.Log('Generated randomness:');
        for (uint i=0; i<size; i++) {
            (value, ) = Random.randomBytes(32);
            emit Log('Array 2: '
                + bytes(value)
                + '| value:'+ bytes((value)));
        }
    }
}

pragma solidity ^0.8.0;
contract Memory {
    using Mutated for Mutated.Log;
    function memRead(uint[] memory) external pure returns (uint[] memory) {
        return new uint[](1);
    }
    function memRead(uint[1000] memory) external pure returns (uint[1000] memory) {
        return new uint[1000]();
    }
}

pragma solidity ^0.8.0;
contract Multiprecision {
    using Mutated for Mutated.Log;
    function multiPrecision(uint256, uint256, uint256) public pure returns (uint) {
        (uint2
