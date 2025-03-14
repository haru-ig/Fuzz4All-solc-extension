pragma solidity ^0.8.0;
contract Mutate2 {
    address public addr;
    uint256 public v;
    bytes32[] public b;
    mapping(address => uint256) public d;
    constructor(address _addr) {
        addr = _addr;
        d[addr] = 1;
        v = 1;


    }
    function f(uint8 v) public returns(int) {
        (v, int) = _f() * 47;
    }

    function _f() public view returns(uint8,int) {
      uint8 a = 1;
      (a, int) = _f2(a);
      a = 1;
      (a, int) = _f3(a);
      return (a,47);
    }
    function _f2(uint8 a) private returns (uint8, int) {
        uint8 b = 0;
        (a, int) = _f21(a, b);
        b = 1;
        (a, int) = _f22(a, b);
        return (a,47);
    }
    function _f21(uint8 a,uint8 b) private returns (uint8, int) {
        b = b * 2;
        b = b * 5;
        b = b * 7;
        b = b + 3;
        b = b * 8;
        return (a + v, b);
    }
    function _f22(uint8 a, int b) private returns(uint8,int) {
      return (a + v, b);
    }
    function _f3(uint8 a) private returns(uint8,int) {
        uint8 o = 0xfe;
        for (uint256 i = 0; i < 47; i++) {
          b.push(o);
          o -= o;
        }
        (a, int) = _f33(a);
        return (a,47);
    }
    function _f33( uint8 a) private returns(uint8, int) {
        uint8 b = a + 3 * v;
        a = 8;
        b = a + b * v;
        b = b + 85;
        a = a + 85;
        b = b * a;
        uint256 c = 2^256;
        uint256 d = -1;
        (a, int) = _f36(a, b, c, d);
        c += uint256(1);
        (a, int) = _f40(a, b, c, d);
        c += uint256(1);
        (a, int) = _f45(a, b, c, d);
        (int) = (1, c);
        return (a, b);
    }
    function _f36( uint8 a,uint8 b, uint256 c, uint256 d) private returns(
