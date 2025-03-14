pragma solidity ^0.8.0;
contract iabuf {
    uint x;
    uint a;

    modifier mod1(uint i) { require(i > a, 'a');
        x --;}
    function modify() public {b=1;}
    function callme() public call(ia) {modify();}
    function set() public {a=5; a+=","; a=13;}
    function set2() public {a=5; a+=","; a=13;}
    function mod2() public {b=1; }
    function mod3() public {b=1;}
    function mod4() public {b=1;}
    function tmod() public {a=10;}
    function test(address sender) public view mod1(x) {x=0;}
}

pragma solidity ^0.8.0;
contract A {
    function test(abibuf.mod1 t) public view {}
}
