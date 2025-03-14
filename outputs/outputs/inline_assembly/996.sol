pragma solidity ^0.8.0;
contract Counter {
    uint private _i;
    function () public payable {
        uint value = msg.value;
    }
    event Incremented (uint  _i);
    constructor () {
        _i = 0;
    }
    function increment() public {
        uint value = msg.value;
        _i += value;
        emit Incremented(_i);
    }
    function value() public view returns (uint) {
        uint value = address(this).balance;
        return _i + value;
    }
}
