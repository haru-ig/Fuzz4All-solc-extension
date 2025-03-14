pragma solidity ^0.8.0;
contract MutantArithmatic83
{
    uint256 x;
    uint8 z;
    uint32 s;
}

pragma solidity ^0.8.0;
contract MutantArithmatic137
{
    uint256 x;
    bool[5] z;

    function f(uint8 i) public returns (uint256) {
        require(i > 0);
        return x;
    }

    function f2(uint8[3] memory values) public returns (bool) {
        return f(sub(values[0], values[1]));
    }

    function f3(uint8[4] memory values) public returns (bool) {
        return f2(f(values[0]));
    }

    function f4(uint8[5] memory values) public returns (bool) {
        return f3(f(values[0]));
    }
}


pragma solidity ^0.8.0;
contract MutantArithmatic183
{
    uint256 x;
    int16 z;
    uint256 s;
}
