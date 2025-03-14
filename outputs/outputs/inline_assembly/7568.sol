pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
    function f() public returns (uint) {
        assembly {
            let _tmp = initialx + 42
            let _tmp2 = add(_tmp,_tmp)
            let _tmp3 = _tmp2
            let _tmp4 = add(_tmp3,initialy)
            let _tmp5 = add(_tmp4,0x1234)
            let _tmp6 = add(_tmp5,0x1234)
            let _tmp7 = sub(add(0,_tmp3),0x1234)
            let _tmp8 = sub(add(0x1234,0x1234),_tmp3)
            let _final1 = add(_tmp7,_tmp8)
            let _tmp9 = sub(_final1,0x1234)
            let _final2 = add(_final1,_tmp9)
            let _tmp10 = add(_final2,0x12)
            let _final3 = add(_final2,_tmp10)
            return add(_final3,_tmp3)
        }
    }
}

```
