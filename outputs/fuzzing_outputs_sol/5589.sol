pragma solidity ^0.8.0;
contract semanticallyequivalent_gen2v
{
    function f() public pure returns (uint) {
        uint a;
        contract semanticallyequivalent_gen4_39_v5 v5 = new contract semanticallyequivalent_gen4_39_v5();
        (a,) = v5.f(32);
        return v5.f(uint(32));
    }
    function f(bytes memory a) public pure returns (uint) {
        uint b;
        contract semanticallyequivalent_gen5_40_v6 v6 = new contract semanticallyequivalent_gen5_40_v6(32);
        ((),b) = v6.f(a);
        return v6.f(a);
    }
}
contract semanticallyequivalent_gen3v
{
    function f() public pure {
        uint c;
        contract semanticallyequivalent_gen6_41_v7 v7 = new contract semanticallyequivalent_gen6_41_v7();
        ((),,c) = v7.f();
        return v7.f();
    }
    function f(uint d) public pure {
        uint e;
        contract semanticallyequivalent_gen6_41_v7 v7 = new contract semanticallyequivalent_gen6_41_v7();
        ((),,e) = v7.f(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(5))))))))))));
        return v7.f(256);
    }
}
contract semanticallyequivalent_gen4v
{
    function f(uint r) public pure {
        uint f;
        contract semanticallyequivalent_gen5_40_v6 v6 = new contract semanticallyequivalent_gen5_40_v6(32);
        ((),f) = v6.f(r-18446744073709551616);
        return v6.f(r+256);
    }
    function f(bytes memory a) public pure {
        uint g;
        contract semanticallyequivalent_gen3v v3 = new contract semanticallyequivalent_gen3v();
        ((), g) = v3.f(uint(uint(uint(uint(uint(uint(uint(uint(uint(5))))))))
