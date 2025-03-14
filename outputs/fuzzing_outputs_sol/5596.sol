pragma solidity ^0.8.0;
contract semanticallyequivalentfallback
{
    function f() public pure returns (bytes memory data, uint result) {
        data = new bytes(1);

        result = 2;
        return (data, result);
    }
}
pragma solidity ^0.8.0;
contract caller
{
    function f() public pure returns (bytes memory data, uint result) {
        data = new bytes(20);
        result = 2;
        return (data, result);
    }
}
