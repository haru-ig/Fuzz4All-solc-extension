pragma solidity ^0.8.0;
contract Equivalent {
    enum MyEnum { A, B, C }

    struct Data {
        uint x;
        MyEnum y;
    }
    function fTest(Data memory d) public pure {
        uint y;
        y = uint(MyEnum(d.y));
        d.y = MyEnum.A;
        y = uint(d.y);
        d.y = MyEnum(3);
        uint z = d.x;
        d.x = 3;
        z = d.x;
        d.x = 3;
        d.x = 3;
        d.x = 1;
    }
}
