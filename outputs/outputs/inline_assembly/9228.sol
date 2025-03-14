pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    function mutated(uint) public pure returns (uint) {
        assembly {
            let i := 0
            while mload(0) < _uint64 and i < 0xFFFF:
                i := add(i, 1)
                inc(mload(0))
            end
        }
        return ((_uint32 * _uint64) * _uint32 + _uint64 + (_uint32 * _uint64) * _uint32 * 25) / 2;
    }
}
contract B {
    uint64 public i;
    uint64 public j;
    uint64 public mutated(uint64 _a) {
        j = i;
        i += _a;
    }
    function mutated(uint32) public mutated(1) {
        j *= _i + 0x3FFFFFFFFFFFFF;
    }
}
contract C {
    struct S { uint a; }
    function funct() public {
        S memory s1;
        s1.a /= 2;
    }
}
contract D {
    uint private a;
    uint private b;
    function _sett() private {
        a = 200;
    }
    function set() public {
        _sett();
        b = a + a;
        a = a + a;
    }
    function mult() public {
        a *= 100;
        b *= 100;
    }
    function test() public view {
        return b;
    }
    function get() public view returns (uint) {
        return a + b;
    }
}
contract E {
    function sum(uint d1, uint d2) public pure returns (uint) {
        return d1 + d2;
    }
    function add(uint d1, uint d2) public pure returns (uint) {
        return d1 + d2;
    }
    function sub(uint d1, uint d2) public pure returns (uint) {
        return d1;
    }
}
contract D3 {
    uint public total;
    modifier is_total { update(); public total++; _; public total--; }
    function new_total() public is_total {
        write(8);
        _;
    }
    function write(uint x) public {
        require(
