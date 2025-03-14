pragma solidity ^0.8.0;
contract SemanticTest_v6a {
    uint[] x;
    constructor() public {
    x = new uint[](3);
    x[1] = 0x1001;
    }
    function set() public {
        x[0] = 0x80;
        x.set(1,0x55);
        x.set(2,0x555);
        x[3] = 0x88;
    }
    function get() public view returns(uint) {
        return uint(x[3]);
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_vX {
    struct X{ uint z; }
    X[] a;
    constructor(){ a = new X[](10); }
    function f(){
        var x = a.get(a.length);
        if(x.z == 666){
            a.get(5).z = 4444;
            a.get(0).z = 3333;
        } else {}
    }
}
