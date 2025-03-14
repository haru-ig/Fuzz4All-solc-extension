pragma solidity ^0.8.0;
contract Mutate120 {
    mapping(uint => uint) private x_;
    mapping(uint => uint) private y_;
    mapping(uint => uint) private z_;
    constructor() public {
        x_[78] = 78;
        z_[45] = 45;
        y_[4] = 4;
        y_[79] = 79;
    }
    function modify(uint k) public {
        y_[k] = 120;
    }
    function getX() public view returns ( uint[] storage ) {
        return x_;
    }
    function getY() public view returns ( uint[] memory ) {
        return y_;
    }
    function getZ() public view returns ( uint[] memory ) {
        return z_;
    }
}
