pragma solidity ^0.8.0;
contract MoreSemver
{
    uint d;
    address a;
    bool initialized;
    uint[20] public c;
    uint i = 0;
    constructor() {
        d = 1 * d;
        a = msg.sender;
        initialized = true;
    }
    function doThat() public {
        if (initialized) {
            c[i] = c[i] - 1;
            d = d * d;
            a = msg.sender;
            initialized = true;
            i = i + 1;
        } else {
            initialized = true;
        }
    }
}


contract Testing
{
    constructor() {}

    function testMoreSemver() public {
        MoreSemver multisig = new MoreSemver();
        multisig.doThat();
        assert(multisig.a == address(0));
        assert(address(multisig) == address(0));
        multisig.c[800] = 800;
    }
}
contract Deploy
{
    function setInit() public {
        MoreSemver multisig = new MoreSemver();
        multisig.doThat();
        address account = multisig.a;
    }
}

contract MultipleStatements
{
    constructor() {
        address account = 0xf4a6a3681ce567381D348dF5Bef472C9F942B0a5;
        deployer.transfer(address(this).balance);
    }
}
