pragma solidity ^0.8.0;
contract Mutant9
{
    bytes32[10] private a;
    uint32 private b;
    modifier m() {
        asm{
            let x := a[0]
            a[0] := a[1]
            a[1] := x
            let y := a[2]
            a[2] := a[4]
            a[4] := y
        }
        _;
    }
    constructor(uint32 _b) public {
        b = _b;
    }
    function f() public returns (uint32) {
        return b;
    }
    function g() public view returns (uint32) {
        return a[0];
    }
    function h() public returns (uint32) {
        a = a.add(b + 8);
        return a[0];
        b = b + 4;
    }
}
