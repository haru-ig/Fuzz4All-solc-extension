pragma solidity ^0.8.0;
contract Caller {

    constructor() {
        B();
    }


    function test() public payable {
        B b;
        _selfTransfer(address(b), Ether(1), 1);
        B c;
        _selfTransfer(address(c), Ether(2), 1);


        B d;
        c._selfTransfer(address(d), Ether(3), 1);
    }

    function _selfTransfer(address to, uint value, uint gasAmount) private {
        (bool ok, ) = to.call{value: value, gas: gasAmount}("");
        require(gasAmount == 0 || ok);
    }
}
