pragma solidity ^0.8.0;
contract Test {
    uint[] memory b;
    function f() public pure returns (uint) {
        return 1;
    }
}

contract Test7 is Test7 {
    pragma solidity >=0.4.13;
    function g() public pure returns (uint) {
        return f();
    }
}
contract Test2 is Test, CalldataArrayAbi {

     struct Test {
        bytes b;
     };
     mapping(uint => mapping(uint => Test)) map;
     function f() public {
          map[15][2] = Test({ b: new bytes(8) });
     }
     function g() public pure returns (uint) {
         return 0;
     }
}
