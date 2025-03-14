pragma solidity ^0.8.0;
contract M10 {
    uint public a;
    M10 public b;

    function test() public {
    assembly {
        let x := a+b
        let y := a+b+1
        let x2 := x+(x << 32)
        let x3 := x+1+(x << 32)
        let y2 := y+(y << 32)
        let y3 := y+1+(y << 32)
    }
    }
}
