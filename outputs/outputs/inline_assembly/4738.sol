pragma solidity ^0.8.0;
contract mutator95 {
constructor() {
    if (g > 1000000000 and g <= 128) {
        isInitialized = true;
    }
}
    uint256 public f=126500000;
    function m() public{ if (contractMutator95_f()) f=95; }
    function contractMutator95_f() public pure returns(bool){ return f == 126500000; }
}

*/ If the compiler will make sure that both g and f are initialized, that is the rule. And the compiler won't actually compile the function without doing so.
pragma solidity ^0.8.0;
contract mutator96 {
    uint g=1569836826;
    uint public h=19;
    uint r;
    function r() public {
        if (g > h) { r = g + h;}
        else {r=g-h;}
    }
    function m() public{
        r=(128-196) % 130 + 203;
    }
    function m2() public{
        r=(contractMutator96_g()) % 100000 + 156789;
    }
    function contractMutator96_g() public pure returns(uint){
        return v_g();
    }
    function contractMutator96_h() public pure returns(uint){
        return v_h();
    }
    function v_g() public pure returns(uint){
        return g;
    }
    function v_h() public pure returns(uint){
        return h;
    }
    function m3() public{ r=v_g()+v_h();}
}
