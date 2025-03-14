pragma solidity ^0.8.0;
contract Mutated {
    address payable public A;

    mapping(uint256 => address payable) public C;
    uint256[] x;

    function A() public {
        A = payable(msg.sender);
        assert(msg.sender == A);
    }

    function Ether(address payable _addr) public {
        assert(msg.sender == _addr);
        C[1] = _addr;
        x.push(1);
    }

    function Eth() public receive() {
        x.push(1);
    }
}
