pragma solidity ^0.8.0;
contract L71MultipleReturn1 {
    uint a;
    uint b;
    function sneaky() public returns (uint a, uint b, uint x, uint y, uint z) {
        uint[] memory args = new uint[](5);
        args[0] = b;
        args[1] = a;
        args[2] = b;
        args[3] = a;
        args[4] = b;
        return (a, b, args[3], args[2], args[0]);
    }
}

pragma solidity ^0.8.0;
contract L71MultipleReturn3 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns(uint[] memory args) {
        uint[] memory args = new uint[](5);
        args[0] = y;
        args[1] = x;
        args[2] = z;
        args[3] = y;
        args[4] = x;
    }
}
