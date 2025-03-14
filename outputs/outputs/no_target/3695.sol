pragma solidity ^0.8.0;
contract G {
    event G (uint32[5] memory c);
    uint32[5] c;
    function f() public returns (uint) {
        c[3] = 1;
        if (c == 1) G(c);
        return c[0];
    }
}
contract X {
    function f() public returns (uint) {
        return 2;
    }
}

contract Test is G, X {

    constructor(){
      c = [2, 3, 5, 13, 29];
    }


    constructor (uint32[5] memory _c){
        c = _c;
    }


    function g() public {
        c[3] = 1;
        if (c == 1) G(c);
    }
}
