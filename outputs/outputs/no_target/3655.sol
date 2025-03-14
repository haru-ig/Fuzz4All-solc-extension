pragma solidity ^0.8.0;

contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this;
        return msg.data;
    }
}






abstract contract Caller {

    function caller() public virtual view returns (address) {
        return msg.sender;
    }
}
contract CallerExample is Context, Caller {}
contract C {
    address payable constant A = payable(msg.sender);
    address payable constant B = payable(payable(msg.sender));
    address constant C = address(payable(msg.sender));
    address constant CAA = CAA;

    function f(CallerExample contractCaller, address payable sender) public virtual returns(CallerExample.Caller) {
        return contractCaller;
    }
    function g(address self) public virtual alwaysPayable returns(address selfx) {
        return selfx;
    }
}
