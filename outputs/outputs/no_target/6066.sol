pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint x;
    function update(uint y) private {
        a = uint(y);
    }
    function get(uint x) private returns(uint) {
        return a;
    }
    function f2() public {
        update(x);
        a = a / x;
        get(x);
    }
}
contract Mod {
    bool ok;
    uint x;
    function update(uint y) private {
        ok = ( a.add(y) == x );
    }
    function get(uint x) private returns(uint) {
        ok = ( a.sub(x) == x );
        return a;
    }
    function f3() public {
        update(x);
        get(x);
    }

}
