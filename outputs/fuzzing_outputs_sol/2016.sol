pragma solidity ^0.8.0;
contract Caller {
   address payable _target;
    event Emitted(address indexed target, uint256 value);
    constructor() {
        _target = msg.sender;
    }
    modifier canCall() {
        require(_target!= address(0));
        _;
    }
    function functionWithEther(uint256 payment)
        public
        payable
        canCall
    {
        _target.call{value: payment}("");
        emit Emitted(_target, payment);
    }
    function functionWithReceive(uint256 payment)
        public
        payable
        canCall
    {
        (bool success, ) = _target.call{value: payment}("");
        (bool success2,, ) = _target.call{value: payment}(abi.encodeWithSignature("fallback()"));
        emit Emitted(_target, payment);
    }
}
