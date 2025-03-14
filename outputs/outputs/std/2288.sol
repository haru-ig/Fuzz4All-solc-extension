pragma solidity ^0.8.0;
interface IMutateable {
    function mutateWithPrecision(uint8 newPrecision) external returns (uint256);
}



pragma solidity ^0.8.0;
contract Mutant {
    uint public value;

            constructor() {
                value = block.timestamp;
            }

    function getMutant(uint8 precision = 1) external returns (uint256) {
        if (precision == 1)
            return getMutantWithPrecision();
        return uint256(keccak256(abi.encodePacked(block.timestamp)));
    }
        function getMutantWithPrecision(uint8 newPrecision) external returns (uint256) {
        uint result;
        uint256 _value = uint256(keccak256(abi.encodePacked(mutant)));
        if (newPrecision <= 8)
            result = (_value - 1 + 2 ** newPrecision) / 2 ** newPrecision;
        else {
            uint8[] memory digits = new uint8[](newPrecision);
            for (uint8 i = 0; i < digits.length; i++) {
                digits[i] = uint8(keccak256(abi.encodePacked(uint256(keccak256(abi.encodePacked(uint8(0b00010000)))), i, _value))));
            }
            uint8 mod8 = digits.length <= 8? (2 ** digits[0]) : uint8(keccak256(abi.encodePacked(uint8(0b0001)))))
            digits[digits.length - 1] %= mod8;
            result *= math.nextPow2(digits);
            for (uint8 i = 0; i < digits.length; i++) {
                result += uint256(digits[i] & (uint256(1) << digits.length - 1))) * (2 ** digits.length - 1);
            }
        }
        return result;
    }
}
