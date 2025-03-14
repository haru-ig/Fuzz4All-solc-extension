pragma solidity ^0.8.0;
contract SomeMathModify {
    function square(uint x) public pure returns (uint xPow2) {
        uint tempX = x + 100;
        xPow2 = x * x + tempX;
    }
    function power(uint x, uint power) public pure returns (uint x2) {
        x2 = 1;
        for (uint i = 1; i <= power; i++) {
            if (i % 2 == 0) {
                x2 *= x;
            }
            x *= x;
        }
    }
}

pragma solidity ^0.8.0;
contract UserDataStruct {
    mapping(uint => uint) valueMap;
}
