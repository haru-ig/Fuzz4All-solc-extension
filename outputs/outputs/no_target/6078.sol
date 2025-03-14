pragma solidity ^0.8.0;
contract Mod5 {
    uint a;
    uint8 b;
    function update(uint y) private {
        require(y > 0);
        a = uint8(y);
    }
    function get(uint x) private returns(uint) {
        require(uint8(x) == a);
        return a;
    }
    function f1() public {
        byte(0xff);
        uFix(40);
        uFix(0x7fffffffffffffffffffe);
        uFix(-40);
        uFix(0xfffffffefffffffe);
        b++;
        update(x);
        get(x);
    }
}
*/
