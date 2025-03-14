pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {
    function test() public {
        uint32 _foo;
        uint32 _bar;
        uint32 _baz;
        uint32 _qux;
        uint32 _quux;
        uint32 _corge;
        uint32 _grault;
        assembly {
            _foo := add(_bar, add(0x1, mul(0x1, add(0x1, _baz))));
            _bar := sub(_qux, mul(0x1, sub(0x1, sub(0x1, and(sub(0x1, mul(0x40, _corge)), sub(0x1, and(sub(0x1, mul(0x40, _grault))), _quux)))))
            _baz := mul(_corge, add(0x1, _quux));
            _corge := and(sub(_baz, _bar), _qux);
            _qux := or(add(_corge, _bar), add(0x1, _quux));
            _quux := and(add(_qux, _corge), and(0x1, _corge));
            _grault := or(add(add(0x1000000000000000000000000000000, _bar), _baz), _corge);
        }
    }
}
