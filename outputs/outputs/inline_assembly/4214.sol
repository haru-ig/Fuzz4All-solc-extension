pragma solidity ^0.8.0;
contract Mutators11 {
    constructor () {
        contract Mutators1 C1 = new Mutators10();
        C1.increment2(5);
    }
}

pragma solidity ^0.8.0;
contract Mutators12 {
    uint8[3] x = [6216556, 261774693, 441888000];
    uint y;
    function f(uint512[3] memory[3] storage, bytes memory z) {
        uint z2;

    }
    function g() public {
        uint x0 = 10;
        uint x1 = 25;
        uint z1 = 30;
        bytes memory z = "0xdeadbeef";
        f(x, z);
        g(x0);
        g(x1);
        g(z1);
        g(abi.decode(z, (uint)));
    }
    function g(uint x0) public {
        uint x1 = 30;
        bytes memory z = "0beefdead";
        f(x, z);
        g(x0);
        g(x1);
        delete(x1);
        g(abi.decode(z, (uint)));
    }
}

pragma solidity ^0.8.0;
contract Mutators13 {
    uint x;
    uint8 y;
    uint[2] v = [0, 0, 0];
    uint8[4][4] memory v2;

    function f() public {
        uint i;
        uint[4][4] memory memory = {{0, 0, 0, 0, 0}|x, 0xabcdef, 0, 0, v, y, 0, 0, 0, 0, 0, 0};
        v2[x
