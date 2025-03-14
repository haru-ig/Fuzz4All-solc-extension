pragma solidity ^0.8.0;
contract A
{
    function f() pure pure returns (uint) {
        uint x = uint(uint(-256) * 100 + 1);
        return pow(uint(-x),256);
    }
}
pragma solidity ^0.8.0;
contract B
{
    function f() pure pure returns (uint) {
        uint y = uint(address(A()) >> uint(uint(x)));

    }
}
