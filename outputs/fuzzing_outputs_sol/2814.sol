pragma solidity ^0.8.0;
contract Caller1 {
}

pragma solidity ^0.8.0;
contract Caller3 {
    function notCallableFunction() public {
        int a = 100;
        int b = 200;
        assembly {
            let v := mload(100)
            let v2 := mload(0x20)
            let v3 := mload(0x40)
            let v4 := mload(0x60)
            let v5 := mload(0x80)
            let v6 := mload(0xA0)
            let v7 := mload(0xC0)
            let v8 := mload(0xE0)
            let v9 := mload(0x100)
            let v10 := mload(0x120)
            let v11 := mload(0x140)
            let temp := 21
            let z := mload(v) / v
            let w := mload(v2) / v2
            let x := mload(v3) / v3
            let y := mload(v4) / v4
            let z0 := mload(temp)
            let z1 := mload(v5) / v5
            let z2 := mload(v6) / v6
            let xx := mload(v7) / v7
            let yy := mload(v8) / v8
            let z3 := mload(v9) / v9
            let z4 := mload(v10) / v10
            let x0 := mload(v11) / v11
            let a0 := mload(a)
            let a1 := mload(a)
            let a2 := mload(b)
            let z5 := mload(zz)
            let z6 := mload(vv)
            let z7 := mload(vvv)
            let z8 := mload(vvvv)
            let x1 := mload(x2) / x2
        }
    }
}
