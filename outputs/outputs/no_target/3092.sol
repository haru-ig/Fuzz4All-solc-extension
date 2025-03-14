pragma solidity ^0.8.0;
contract third{
    function f() public pure returns (uint) {
        return 10;
    }
}
contract second is third{
    function a() public pure returns (uint) {
        return (4^uint160(42)).d + 5*(4d^uint160(uint64(2)));
    }
}
contract first is second{
     function b()
        public pure
        returns  (uint)
    {
        return first.a();
    }
     function test() public pure returns (uint) {
        return 4 + b();
    }
}
contract test{
    uint x;
    uint a;
    function test1() public {
        first f;
        uint c;
        if (42 <= f.test1()) {
            c = a + 1;
            x = a + 2;
        }
    }
}
