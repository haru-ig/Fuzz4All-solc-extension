pragma solidity ^0.8.0;
contract newY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function f() public returns (uint256) {
      return x + y;
    }
    function func() public {
      uint256 z = 0;
      while (true) {
        z = z + x + y;
        x++;
        if (z == 900) { break; }
      }
    }
}

import "truffle/Assert.sol";

contract MyTest is Assert {
    function test() public {
      assembly {
        let x_var := mload(0x40)
        let x_const := 0x55aa5555ee44000
      }
        Assert.equal(true, true, 'x_const!= x_var');

        uint256 var;
        asm ("let var := mload(0x40)");
        Assert.equal(x_var, var, 'wrong var');

        uint256 y_var;
        asm ("let y_var := div(0x40, 0xee4400000000000)");
        Assert.equal(true, true, 'y_var!= var');

        uint256 z2_var;
        asm ("let z2_var := add(0x0000000000000000, 0x5555555533ee4444)");
        Assert.equal(y_var, z2_var, 'z2_var!= var');

        assembly {let z_const := div(0x0000000000000000, 0x3ee4444444440000)}
        Assert.equal(x_const[0], 3, 'z_const!= x_const[0]');

        assembly { let x := add(a, 0x0000000000000000, 8)}
        z_const[0] = 0xa9;
        Assert.equal(z_const, x, 'z_const!= x');
    }
}
