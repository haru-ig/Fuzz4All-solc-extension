pragma solidity ^0.8.0;
contract MutateFoo {
    function setfoo(address _foo) public { }
}
pragma solidity ^0.8.0;
contract Wraps {
    uint _foo;
    constructor () public { _foo = 1; }
    function setfoo() public pure { _foo = 1; }
    function getfoo() public pure returns (uint) { return _foo; }
}
pragma solidity ^0.8.0;
contract Overflows {
    constructor () public { }
    function setfoo(address x) public { require(bytes4(keccak256("setfoo")) == x.target); _foo = 1; }
    function getfoo() pure public returns (uint) { return _foo; }
}
pragma solidity ^0.8.0;
contract Modulo {
    uint160 a;
    uint160 b;
    constructor () public { a = 1; b = 1; }
    function mul() public pure { a *= 65535; b *= 65535; }
}
pragma solidity ^0.8.0;
contract ModuloAndWraps {
    uint160 a;
    uint160 b;
    constructor () public { a = 36232; b = 757575; }
    function setfoo() public pure { b *= 65535; a *= 65535; }
}
pragma solidity ^0.8.0;
contract NoWraps {
    uint160 a;
    uint160 b;
    constructor () public { a = 200; b = 75; }
    function setfoo() public pure { b *= 67; a *= 65535; }
}
pragma solidity ^0.8.0;
contract NoModulo {
    uint160 a;
    uint160 b;
    constructor () public { a = 200; b = 276541; }
    function setfoo() public pure { b *= 56475; a *= 67; }
}
pragma solidity ^0.8.0;
contract Negative256 {
    uint160 a = -256 * (10 ** 18);
    uint160 b = 5555555555 * (10 ** 15);
    uint160 c = ~256 + (10 ** 26);
    uint160 d = ~256 + (10 ** 512);

    function get() public pure returns (uint160) { return b; }

    function set() public {
        a = -256 * (10 ** 15); b = ~256 + (10 ** 26);
        c = _neg(a+5); d = _neg1(a+3678);
        c =
