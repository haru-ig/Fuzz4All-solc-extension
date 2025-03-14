pragma solidity ^0.8.0;
contract Fallback2 {
    function Fallback2() {}
    function getData() public pure virtual returns (uint){ return 2; }
    function transferEther(address to_, uint value_) public payable{ to_.transfer(value_); }
}

contract Caller {
    interface Interface {
        function getData() external view returns (uint);
    }
    function callToCaller(Interface _interface, uint _amount) external {
        uint _data = _interface.getData();
        _interface.transferEther(address(this), _amount);
        if (_data == 1) {
            fallback(address(this));
        } else if (_data == 2) {
            fallback(1);
        } else {
            fallback(2);
        }
    }
}
