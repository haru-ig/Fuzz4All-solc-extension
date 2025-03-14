pragma solidity ^0.8.0;
contract E {
    uint constant z = 1;
    uint constant zy = 2;
    uint constant w = 3;
    function y() public view returns (uint) {
        return zy;
    }
    function x() public view returns (uint) {
        return z * zy - z * x - w;
    }
}

pragma solidity ^0.8.0;
contract F {
    uint constant x = 666;
    uint constant l = 42;
    uint constant z = 4377;
    uint constant w = 666;
    uint constant zy = 7890;
    function add() public view returns (uint) {
        return (x + l * z + w * zy)[2] +
            (((x + l * z + w * zy)[3] | ~z & 0x72b0011)[3] & ~z & 0x72b0011) -
            42;
    }
}

pragma solidity ^0.8.0;
contract G1 {
    uint k;
    uint public y;
    uint public z;
    uint pub public zy;
    uint public zw;
    constructor() public {
        k = 1;
        y = z + (1 << 256) - z * k;
    }
}

pragma solidity ^0.8.0;
