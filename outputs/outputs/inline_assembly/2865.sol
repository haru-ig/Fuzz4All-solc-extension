pragma solidity ^0.8.0;
contract B {
    uint z;
    function set(uint _z) public {
        z = _z;
    }
    function func() public payable {
        uint _z = 2;
        set(_z);
        uint _zz = (z == 0? 3 : z);
        if (2 == 3) {
            z += 1;
            set(z);
        } else {
            z += 3;
            set(z);
        }
    }
}
