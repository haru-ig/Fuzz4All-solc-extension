pragma solidity ^0.8.0;
contract Mutate80 {
    uint256 private constant x_min = 5;
    uint256 private constant x_max = 100;
    uint[] private x2_;
    constructor() public {
        x2_ = new uint[](4);
        for(uint256 i=0;i<x2_.length; i++){
            x2_[i] = uint256(x_min + uint256(uint128(uint256(x_max)/(uint128(uint256(x_max)-uint128(uint256(x_min)))))));
        }
    }
    function set1(uint z) public {
        x2_[0] = uint256(x_min);
    }
    function set2(uint z) public {
        x2_[2] = uint256(x_min);
    }
    function add3(uint z) public {
        x2_[3] = uint256(x_min);
    }
    function add4(uint z) public {
        x2_[1] = uint256(x_max);
    }
    function max1(uint z) public {
        x2_[0] = uint256(x_max);
    }
    function max2(uint z) public {
        x2_[2] = uint256(x_max);
    }
    function min1(uint z) public {
        x2_[0] = uint256(x_min);
    }
    function min3(uint z) public {
        x2_[3] = uint256(x_min);
    }
    function min4(uint z) public {
        x2_[1] = uint256(x_min);
    }
    function max4(uint z) public {
        x2_[1] = uint256(x_max);
    }
    function div1(uint z) public {
        x2_[0] = uint256(x_max);
    }
    function div2(uint z) public {
        x2_[2] = uint256(x_max);
    }
    function mod1(uint z) public {
        x2_[0] = uint256(x_max);
    }
    function mod2(uint z) public {
        x2_[2] = uint256(x_max);
    }
    function mult1(uint z) public {
        x2_[0] = uint256(x_max);
    }
    function mult2(uint z) public
