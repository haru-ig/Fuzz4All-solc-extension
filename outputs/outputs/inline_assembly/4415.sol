pragma solidity ^0.8.0;
contract Emulator4 is IA {
    uint x;
    address payable y;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        return ret;
    }
    function check() public view returns(bool) {
        if (x +1 == 4) {
            return true;
        }
        return false;
    }
    function payWithGas(uint gas) public payable returns(uint) {
        uint ret = gas - y.balance;
        write();
        return ret;
    }
    function write() public pure {}
}

contract IA {
    function callContract() public;
}
contract Emulator5 {
    uint x;
    function add2(uint x) public returns(uint) {
        uint ret = x+1;
        write();
        return ret;
    }
    function callContract() public {
        IA x = IA(0x3b10546e8C3738eA101d3C1a0fA8A8AF9F57c2B2);
        x.callContract();
        x = IA(0x3b10546e8C3738eA101d3C1a0fA8A8AF9F57c2B2);
    }
    function write() public pure {}
}
