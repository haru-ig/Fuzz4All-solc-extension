pragma solidity ^0.8.0;
contract C {
    event E();
    event E();
    mapping(uint256 => uint256) public s;
    address [] public m;
    address [] public s1;
    uint256 value1;
    uint256 value2;
    uint256 x1;
    uint256 x2;
    function C() {
        uint256 a = 1;
        uint256 b = 1;
        uint256 x = 1;
        address [] memory m1 = [address(this)];
        address [1] memory s11 = [address(this)];
        m.push(address(this));
        m.push(address(this));
        m.push(address(this));
        m.push(address(this));
        m.push(address(this));
        value1 = 1;
        value2 = 1;
        s.push(1);
        s.push(1);
        s.push(1);
        s.push(1);
        s1[9] = m1[0];
        m[3] = new (address[](0)) address[](5);
        s1.push(m[3]);
        m[3] = new (address[](0)) address[](1);
        m[1] = new (address[](0)) address[](1);
        m[2] = new (address[](0)) address[](2);
        uint256 y = 1;
        m[3] = new (address[](0)) address[](8);
        b = m[3];
        m.push(address(this));
        uint256 z = 1;
        m[1] = new (address[](0)) address[](6);
        m[2] = new (address[](0)) address[](5);
        m[3] = m[1];
        uint256 w = 1;
    }
}
