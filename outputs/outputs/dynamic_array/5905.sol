pragma solidity ^0.8.0;
contract Test33939 {
    uint16[3][] memory a = [ [0x2, 0x3, 0x4] ];
    uint16[3][] memory b;
    function test() public {
        a[0][0] = 0x3;
        b[1] = a;
    }
}

pragma solidity ^0.8.0;
contract Test40582 {
    uint16[3] memory a = [ 1, 2, 3 ];
    function test() public {
        uint16[3] memory a_assign;
        a_assign[0] = 0x1;
        a_assign[1] = 1;
        a_assign[2] = 0xb;
    }
    function test2(uint16[] memory a_assign) public {
        a_assign[0] = 0x1;
        a_assign[1] = 1;
        a_assign[2] = 0xb;
    }
}
library uint16_ {
  function get() public pure returns (uint16) { return 0x2; }
  function get2() public pure returns (uint) { return 0x2; }
}


pragma solidity ^0.8.0;
contract Test43332 {
    uint[] x = [ 0x0, 0x1, 0x2, 0x8 ];
    function test() private view returns (uint[]) {
        uint[] memory a_get;
        a_get[0] = x[1];
        return a_get;
    }
}
pragma solidity ^0.8.0;
