pragma solidity ^0.8.0;
interface New {
    function old(uint _a) pure public returns(uint);
}
contract Newer is New {
    function old(uint _a) public pure override returns(uint) {
        return 2*_a;
    }
}

contract Caller {
    Newer public contract = new Newer();
    Old public oldo = contract;

    function callOld() public pure returns(uint) {
        return old(1);
    }

    function callNew() public view returns(uint) {
        return old(1);
    }
}
