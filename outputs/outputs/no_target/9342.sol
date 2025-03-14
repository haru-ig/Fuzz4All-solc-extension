pragma solidity ^0.8.0;
contract semanticallyEquiv3
{
    constructor(){}
}
contract semanticallyEquiv4
{
    uint256 public x;
    constructor(uint256 _x) public {
        x = _x;
    }
    function f() public view returns(uint256) {
        return x;
    }
    function a() public view returns (uint256) {
        return x;
    }
}
contract semanticallyEquiv5
{
    constructor() payable {}
    address payable f() public {}
}
contract semanticallyEquiv6
{
    mapping(address => uint256) public f;
    uint256 c = 2;
    uint256 t;
    uint256 x;
    uint256 y;
    constructor() public {
        address x = address(1);
        f[x] = 1;
        f[address(1)] = 1;
        f[address(0)] = 1;
        c = 2;
    }
    function h() public returns (uint256) {
        return b();
    }
}
contract semanticallyEquiv7
{
    constructor(address[9] memory x) public {}
}
contract semanticallyEquiv9
{
    constructor(bytes10 memory x) public {}
}
contract semanticallyEquiv13
{
    constructor(address x) public {
       int64 x = 10;
    }
    uint256 y = 0;
    function f() public view returns (int64) {
        return static(uint32x(uint64x(x)));
    }
}
contract semanticallyEquiv8
{
    event f();
    constructor(address[2] memory x) public {}
    function h() public view returns (int64) {
        return static(uint32x(uint64x(x)));
    }
}
contract semanticallyEquiv14
{
    uint256 public x;
    uint256 public y;
    uint256 public z;
    uint256 public z;
    constructor(uint256 _x, uint256 _y, uint256 _z) public {
        x = _x;
        y = _y;
    }
    uint256 g(uint256 x) public pure returns(uint256) {
        return x;
    }
    uint256 h(uint256 x) public pure returns(uint256) {
        return x;
    }
    function f() public view returns (uint256) {
        return g(h(x));
    }
}
contract semanticallyEquiv15
{
    mapping(address => uint256) public x;
    mapping(address => uint256) public h;
    function f() public view returns (uint
