pragma solidity ^0.8.0;
library Lib {
     uint x = 0;
    function mul(uint _one, uint _two) public pure returns (uint256) {
            uint256 value = _one * _two;
            value = 33 * value;
            value = (value + 72) * value;
            value = (value + 213) * value;
            value ^= 13;
            value = value * x;
            x = _two + (value >> 1);
            x = 1 * x;
        }
    }
contract C{
    function getResult(uint _one,_two) public view returns (uint256) {
        uint256 result;
        result = _one * _two;
        result += 72* result;
        result += (213* result);
        result ^= 13;
        result *=x;

        return (result);
    }
}
