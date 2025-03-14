pragma solidity ^0.8.0;
assembly {
  contract A {
    function f() view internal returns (uint[] memory) { return [1,2,3]; }
}
contract B is I2b {
    using DataContracts for uint[];
    function foo() public view returns (uint[] memory x) {
        x = A.f();
    }
}
pragma solidity ^0.8.0;
interface I2b {
    function foo() public view returns (uint[] memory);
}
contract B is I2b {
    using DataContracts for uint[];
    function foo() public view returns (uint[] memory x) {
        x = DataContracts.f();
        x[0] = DataContracts.g();
    }
}
