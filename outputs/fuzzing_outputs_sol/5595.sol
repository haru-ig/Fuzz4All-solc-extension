pragma solidity ^0.8.0;
contract semanticsincubating
{
    function f() public pure returns (bytes memory data, uint result) {
        data = new bytes(1);
        data[0] = 'a';
        uint v = 2 ** 256 - 1;
        result = v << 8 | v + 1;
        return (data, result);
    }
}

pragma solidity ^0.8.0;
contract semanticsincubating
{
    function f() public pure returns (uint result) {
        uint value = 0;
        assembly {
            value := returndatasize(0)
        }
        if (value > 0) {
            return 1;
        }
        return 0;
    }
}
