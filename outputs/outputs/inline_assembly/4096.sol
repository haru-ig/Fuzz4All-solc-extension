pragma solidity ^0.8.0;
contract FixedModis32x64 {
    uint constant x = 1e12;
    function test(uint x, uint) public {
        assembly {
            mstore(x,mul(x,32))
        }
    }
    function test2(uint y) public {
        test(y, x);
    }
}


pragma solidity ^0.8.0;
contract FixedModis32x642 {
    uint constant x = 1e127777;
    function test(uint x, uint) public {
        assembly {
            mstore(x, mul(x, 32))
        }
    }
}
