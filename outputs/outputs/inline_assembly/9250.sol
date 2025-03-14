pragma solidity ^0.8.0;
contract A {
    uint _uint64 = 9 * 1e10;

    uint constant _bytes  = 32;
    function mutatedBy(uint) public pure returns (uint) {
      uint i = uint(uint(_uint64) * 16); return (uint(i - (uint(_uint64) * 10) ** 32) * 16) * uint2addr(_bytes);
    }
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract A is ERC20{
    function mutatedBy(uint _value) public mutates(uint _result) returns (uint _overflow) {


        uint _numerator = _value*128;
        uint _numeratorMod = _numerator % 127;


        uint _remainder = _numeratorMod * 4;

        uint _mostSignificantBit = _remainder % 2;
        uint _sign = 255-_mostSignificantBit;

        _remainder -= uint(uint(_sign) * 127);
        _result = uint(_result) - ((_remainder % 128) * 127);
    }
}


/* We subtract the
