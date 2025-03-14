pragma solidity ^0.8.0;
contract Counter_NotSemanticallyEquivalent {
    struct Counter { uint public num; }
    address payable private _address;
    uint private _i;
    Counter private _counter;
    struct PipedIn_Increment { uint _i; }
    constructor() {
        _counter.num = 0;
    }
    function increment(PipedIn_Increment calldata _data) public {
        Counter memory _cpy = _counter;
        _i++;
        _cpy.num++;
        _address.transfer(address(uint160(_i)));
        emit Incremented(_cpy.num);
    }
}
