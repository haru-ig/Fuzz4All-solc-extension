pragma solidity ^0.8.0;
abstract contract Modification {

    constructor(uint256 _m1) public {
        m1 = _m1;
    }

    uint256 public constant m1;
}

pragma solidity ^0.8.0;
contract Overflow {

    uint256 public constant m1 = uint160(-176542311823415546894);

    constructor(uint256 _m) public {
        m1 = _m;
    }

    function doOperation(uint256 a) public pure returns (uint256 b) {
        uint256 tmp;
        b = a;
        do {
            uint256 t = a / b;
            a = t * t;
        } while (a < 10000);
        tmp = a;
    }
}
