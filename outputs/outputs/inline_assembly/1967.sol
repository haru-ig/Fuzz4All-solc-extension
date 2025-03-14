pragma solidity ^0.8.0;
contract NewY2 {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z() public returns(uint256) {
        uint256 a = 119;
        uint256 b;
        a+=x2; a+=x2;
        b=a+x2*a; a+=(x*2);
        b+=(x2*2*a-x*2); a *= a + a + x;
        return a;
    }
}
contract NewY1 {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    bytes2 public constant b = 0x11;
    bytes public data;
    constructor() public {
        data = abi.encode(x, x2, b);
    }
    function z() public returns(uint256) {
        uint256 a = data.length;
        uint256 b = a + x2;
        a++;
        b=a+x2*a; a+=b;
        b+=(x*2); a*=a+a+x;
        return a;
    }
}

pragma solidity ^0.4.0;
contract NewY2 {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    bytes2 public constant b;
    constructor(uint256 memory param1, uint256 memory param1_, bytes2 memory param2, bytes memory memorydata) public {
        b = param2;
    }
    function z() public returns(uint256) {
        uint256 a = b.length;
        uint256 b = a + x2;
        a++;
        b
