pragma solidity ^0.8.0;
contract D {
    uint256 a;
    constructor() public {
        a = a + 2;
    }
    function f1() public {
        a = a + 1;
    }
    function f2() public {
        a = a + 3;
    }
    function f3() public {
        a = a + 2;
    }
    function f4() public {
        a = a + 1;
    }
}

contract C {
    uint256 x;
    uint256 y;
    uint256 z;
    bytes32 b;
    bytes32[] s;
    address a;
    bytes32[] m;
    bytes32[] n;
    function f() public returns (bytes memory) {
        require(x == 0);
        bytes32 _b = b;
        bytes32 _b_store = b;
        return bytes32(_b_store) + bytes32(_b) + bytes32(__callback(a, __callback(x, x), __callback(y, y)));
    }
    function __callback(uint256 _b) public pure returns (uint256) {
        return _b - 2;
    }
    constructor() public {
        x = 1;
        y = 2;
        z = 3;
        b = "B";
        b.length += 1;
        a = 0;
        calldata[2] >>= 1;
        calldata[3] <<= 2;
    }
    function getStorage() public view returns (uint256, uint256) {
        uint256 _a_storage = a;
        (x,y) = (1,2);
        (a, b) = (__callback(a), b);
        x += 1;
        b.length += 1;
        b[b.length - 1] = 4;
        a = 3;
        return (_a_storage, b[b.length - 1]);
    }
}

library Calldata {
    function decodeCalldata(
        address _addr,
        bytes calldata _calldata
    )
        external
        view
        returns (
                uint256 _x,
                uint256 _y,
                uint256 _z,
                bytes32 _b
        );
}
