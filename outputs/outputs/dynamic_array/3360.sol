pragma solidity ^0.8.0;
contract Olivers2b is I2b {
    function foo() external view returns (uint[] memory) { return f[0...3]; }
    function bar() external { foo[0...2].length = 2; }
}

pragma solidity 0.8.0;
interface I2b {
    function foo() external view returns (uint[] memory);
    function bar() external;
}
pragma solidity 0.8.0;
contract Olivers2b implements I2b {
    mapping (uint => uint) f;
    function foo() external view returns (uint[] memory) { return f[0...3]; }
    function bar() external { foo[0...2].length = 2; }
}
