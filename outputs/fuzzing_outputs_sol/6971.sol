pragma solidity ^0.8.0;
contract Caller {
    function write0() public {
        modifier read();
        bytes32 v = msg.data;
        (uint x, ) = abi.decode(v, (uint,uint));
        uint y = read();
        if (x == 5) {
            (address x, ) storage u = (address(this).balance);
            uint z = uint(u);
            u = address(this).balance;
            uint w = uint(read());
            uint v = read();
            read();
        }
    }

    function write1() public {
        modifier read();
        (address x) storage u;
        uint w = uint(read());
        uint v = uint(read());
        uint y = uint(u);
        x = 1;
        u = 42;
    }

    function write2() public payable {
        modifier read();
        (address x) storage u;
        uint w = uint(read());
        uint v = uint(read());
        uint y = uint(u);
        x = 20;
        u = 43;
    }
}
