pragma solidity ^0.8.0;
contract B {
    uint z;
    mapping(uint => uint) store;
    function set(uint _z) public {
        if (store[z] == 0) {
            z = _z;
            store[z] = _z + 1;
        }
        if (2 == 3) {
            store[z] = z + _z;
        }
    }
    function func() public payable {
        uint _z = 3;
        if (1==3) {
            _z = 4;
            set(_z);
        } else {
            _z = 5;
            set(_z);
        }
    }
}
