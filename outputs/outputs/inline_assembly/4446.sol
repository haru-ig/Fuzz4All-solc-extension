pragma solidity ^0.8.0;
contract Emulator4 {
    uint x = 1;
    uint y = 2;
    function add(uint x,uint y) public pure {
        uint ret = x + y;
        printf("x+y: %u, x+x: %u",ret,ret+ret);
    }
    function write() public pure {}
}

pragma solidity ^0.8.0;
contract Emulator3 {
    uint x = 1;
    uint y = 2;
    function add(uint x_, uint y) public pure {
        uint ret = x_ + y;
        printf("x + y: %u",ret);
    }
    function write() public pure {}
}
