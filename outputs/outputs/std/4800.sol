pragma solidity ^0.8.0;
contract B {
  function bar() public view retuns(uint[]) {}
  function bar2() public pure returns(uint[]) {}
}
contract C {
    uint[] bar;
    function he4() public view returns(uint[] memory) {}
    function he3() public pure returns(uint[] memory) {}
    function bar3() public view returns(uint) {}
    function bar4() public pure returns(uint) {}
}
contract D {
    uint[] public bar;
    function he4() public view returns(uint[] memory) {}
    function he3() public pure returns(uint[] memory) {}
    function bar3() public view returns(uint) {}
    function bar4() public pure returns(uint) {}
}
contract E {
    uint[] constant bar;
    function he4() public view returns(uint[] memory) {}
    function he3() public pure returns(uint[] memory) {}
    function bar3() public view returns(uint) {}
    function bar4() public pure returns(uint) {}
}
contract F {
  function he2() public view returns(uint) {}
  function bar5() public view returns(uint) {}
}
contract G {
    uint[] barr;
    uint x;
    uint y;
    constructor(uint v) {
        x = v;
        y = v;
    }
    function he3() public view returns(uint) {
        return x+y;
    }
    function he4() public view returns(uint[]) {
        return [x, y];
    }
    function he5() public view returns(uint, uint) {
        return [x, y];
    }
    function bar6() public view returns(uint, uint, uint) {
        return [x, y, 30];
    }
}
contract H {
    uint x;
    function he4() public view returns(uint) {
        return x+5;
    }
}
contract J {
    uint x ;
    function he2() public view returns(uint) {
        return x+2;
    }
}
contract K {
    uint x;
    function he4() public view returns(uint) {
        return x+5;
    }
}
contract L {
    uint x ;
    function he5() public view returns(uint) {
        return x+x;
    }
}
