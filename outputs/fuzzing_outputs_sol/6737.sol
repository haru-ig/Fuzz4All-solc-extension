pragma solidity ^0.8.0;
contract Mutator {
    address mut private _addr;
    function Mut(uint a) public view returns (uint) {
        require(a % 70 > 0, "a is not a mut");
        return mut(_addr, a);
    }
    function mut(address add, uint a) internal returns (uint) {
        return mut(add, a);
    }
    function mut(address add, uint a) internal returns (uint) {
        _addr = add;
        uint result = a / 2;
        emit MutLog(a);
        return result;
    }
    address public payable _valueToWithdraw;
    modifier payable {
        _valueToWithdraw = msg.value;
        _;
    }
    event MutLog(uint a);
}
