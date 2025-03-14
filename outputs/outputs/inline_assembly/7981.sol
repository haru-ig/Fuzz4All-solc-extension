pragma solidity ^0.8.0;
contract L80MultipleReturn5 {
    bool x;
    uint y;
    uint z;
    function returnTrue() public returns (bool, uint z, uint y, uint x) {
        uint[] memory args = new uint[](4);
        x = false; y = 1; z = 0x100;
        args[0] = y;
        args[1] = x;
        args[2] = z;
        args[3] = 1;
        return (true, z, y, x);
    }
}

pragma solidity ^0.8.0;
contract L54MultipleReturn3 {
    uint[] public args;
    bool x;
    uint y;
    uint z;
    bool a;
    address pubp;

    function returnTrue() public returns (bool, uint z, uint y, uint x, bool a, address pubp) {
        x = false; y = 2; z = 0x100;
        uint[4] memory args = new uint[](4);
        args[0] = y; args[1] = 2;
        args[2] = z; args[3] = 1;
        a = false;
        pubp = 0x1000;
        x = false; y = 1; z = 0x100;
        args = new uint[](4);
        args[0] = y; args[1] = 2;
        args[2] = z; args[3] = 1;
        return (true, z, y, x, a, pubp);
    }
}
