pragma solidity ^0.8.0;
contract SemanticEquivalence {
    address public owner = msg.sender;
    bool public flag = false;
    uint256 public constant n = 3;
    modifier when() { require(msg.value!= 0, '0'); _ ; }
    function callDefault() public returns (uint256 _r, uint256 _s, bytes memory _v) {
        uint256 a = 1;
        uint256 r = ((uint256(msg.value) << 120) * uint256(n) - a + 2) >> 64);
        uint256 s = (r + a) / 2;
        bytes memory v = '0';
        function call1() internal { (a > b) && (msg.sender.sendValue(msg.value - 1)); }
        function call2() internal { b < c; (b < c) && (b) && (msg.sender.sendValue(msg.value - 1)); }
        function call3() internal { b > c; (!(b >= c)) && (b) && (msg.sender.sendValue(msg.value - 1)); }
        (, r, v ) = (call1, call2, call3)();

    }
    function fallback(uint256 _r, uint256 _s, bytes memory _v) public returns (uint256 a, uint256 b, uint256 c) {
        uint256 d = ((_r * (uint256(n) - 1)) + _s + 1) >> 80);
        uint256 w = (d * 2 - 1);
        (a, b, c) = (w < d? (_s < b) : (d <= _v[79]))? ('1', v.length == 0? 0 : v[79], v) : ('0', v.length == 0, v);
    }
    function receiveValue(uint256 _value) public payable {
        flag = true;
        msg.sender.sendValue(_value);
    }
}
