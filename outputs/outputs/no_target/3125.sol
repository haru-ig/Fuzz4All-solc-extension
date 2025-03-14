pragma solidity ^0.8.0;
contract fourth{
    uint public v;
    function f() public{
        uint x = v + v;
        x = 0;
        x = v + v;
    }
}
contract fourth {
    address payable public o1;
    address payable public o2;
    bool isContract;
    address public owner;

    receive() external payable {}

    constructor() public {
        isContract = true;
        owner = msg.sender;
    }

    modifier only_owner() {
      require(msg.sender == owner);
      _;
    }

    function set_o2(address payable _o1) public only_owner{
        o1 = _o1;
    }

    function Set_o2(address payable _o1, bool _doThis) public only_owner{
        o1 = _o1;
        isContract = _doThis;
    }

    function withdraw() public only_owner{
        uint x = 0;
        uint y = 0;
    }
}
