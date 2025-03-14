pragma solidity ^0.8.0;
library MyLib {
    function multiplyBy8(MyData d) public pure returns (MyData memory) {
        d = MyData({
            bbb: uint[8]([
                1,  2,  3,  4,  5,
                6,  7,  8,  9, 10, 11, 12, 13, 14
            ])
        });
        if (d.bbb.length < 8) d.bbb.length = 8;
        for (uint256 i = d.bbb.length; i>0; i--) d.bbb.pop();
        assert(d.bbb.length == 8);
        for (uint256 i=0; i<8; i++) d.bbb[i] *= 8;
        return MyData(d);
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    function f2() internal pure returns (uint[2]) {
        return uint[2](address(0).balance, 1);
    }
    function f1() public {
        uint[2] memory a;
        a = MyLib.multiplyBy8(a);
        assert(MyLib.multiplyBy8(a).bbb.length == 8);
        (uint[2 memory] memory b) = f2();
        uint[2 memory c; _ = 1](uint[2 storage] storage x);
    }
}
