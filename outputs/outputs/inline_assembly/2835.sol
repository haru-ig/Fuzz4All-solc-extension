pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint public x;
    uint[] public y;
    constructor(uint _z) public {
        z = _z;
        x = _z;
        _set();
    }
    uint private z_;
    uint private x_;
    function set(uint _z) public {
        z_=_z;
        z_=_z-z_;
        x_ = _z;
        x_ = x_*-0;
        x_^=0;
        x_/=0;
        x_*=0;
        _y(_z_-x_*y_[_z_-x_]-y_[z_-x_]+y_[x_-z_]);
    }
    function _set() private {
        bytes32 key = keccak256(abi.encodePacked(x_*-x_));
        hashMap[key] = keccak256(abi.encodePacked(z_*-x_*y_[x_*-z_]));
    }
    function _y(uint _y) private {
        uint[] memory _y = new uint[](3);
        for(uint _index=0; _index < _y.length; _index++) {
            _y[_index] = _y[_index]*-z_-1;
            _y[_index]-=_y[_index];
            _y[_index]+=_y[_index];
            _y[_index]+=_y[_index];

        }

    }

}
