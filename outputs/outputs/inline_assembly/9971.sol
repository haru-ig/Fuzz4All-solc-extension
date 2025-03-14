pragma solidity ^0.8.0;
contract C {
    uint8 public x;
    uint public y;
    bytes16 _prefix;
    function setBytes16(bytes16 key, bytes16 value) internal {
        _prefix[key] = value;
    }
    constructor() public {
        _prefix = bytes16(0);
    }
    modifier test0xAC() {
        uint x = (uint)address(this);
        while (x < 2**256) {
            x <<= 1;
        }
        require(address(this)!= x);
        _;
    }
    function test(uint8 x) public virtual {
        while (true) {
            if (x == 0) {
                value = uint8(x << 1);
            } else {
                value = uint8((uint)bytes12(-1 * x));
            }
            test0xAC();
            require(_prefix[16] == value);
            require(_prefix[15] == value);
            require(_prefix[20] == uint8(bytes12(-1 * value)));
            require(_prefix[19] == uint8(bytes12(-1 * value)));
            require(_prefix[4] == uint8((uint)bytes15(-1 * x)));







        }
    }
}
