pragma solidity ^0.8.0;
contract SolveModul
{
   function test2() public pure returns (uint) {
       uint mod = 138899;
       function a(uint x) public pure returns (uint) {
          return (mod = x + 1000013890);
       }
       (mod) = (uint)(a(1223899));
       return mod;
   }
}

pragma solidity ^0.8.0;
contract SolveModul
{
    function test3() public pure returns (uint) {
        uint mod = 256459;
        uint result = 1000013890;
        result = (mod = 150000);
        result = (uint)(a(result));
        result = (mod = 150000);
        return mod;
    }
    function a(uint x) pure returns (uint) {
        return (uint)(x + 1);
    }
}
