pragma solidity ^0.8.0;
contract Squares {
    using Math for uint;
    struct Squared {
        uint left;
        uint right;
        uint val;
    }
    function calc(uint _a, uint _b, uint _c) public pure returns(uint) {
        Squared storage temp = memory(_a, _b, _c);
        Squared memory m = temp.val;
        return m.left.square().square().add(m.right.square().mul(temp.right)).add(m.right.square().mul(temp.left).add(m.left.square().mul(temp.val)));
    }
    function get(uint _n) public pure returns (uint) {
        Squared memory a;
        a.left = _n;
        a.right = a.left.sub(1).div(2).square();
        return a.val.div(4).square();
    }
    function memory(uint _a, uint _b, uint _c) public pure returns (Squared memory) {
        Squared storage b = memory();
        b.left = _a;
        b.right = _b;
        b.val = _b.square().sub(_a.square());
        return a;
    }
}
