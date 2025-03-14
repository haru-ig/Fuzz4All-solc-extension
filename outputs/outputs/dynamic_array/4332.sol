pragma solidity ^0.8.0;
contract C { uint256[3] public _array; }
contract D { uint256[4][2][2] public _array; }
contract E { uint256[3][1] public _array; }
contract F { uint256[2][1][2] public __array; }
contract G { uint256[1][3][2] public [;] public _array; }
contract H { uint256[2][3][2] public __array; }
interface K {
    function foo() external ;
}
contract I { event A(uint256[] a); event A(uint256[3][] a); event A(uint256[][][] a); }
contract J { string[] public _array; }
