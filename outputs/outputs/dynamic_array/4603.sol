pragma solidity ^0.8.0;
struct ArrayHelper {
    MyData ddd;
}

library ArrayHelper {
    function getFoo(ArrayHelper storage ddd, uint index)
        public
        pure
        returns(uint)
    {
       return ddd.ddd[index];
    }
}

function getFoo(ArrayHelper storage ddd)
    public
    pure
    returns(uint);

MyData MyStruct[4];
ArrayHelper.getFoo(MyStruct, 4);
MyStruct[50].ddd.d[4] = 10;
ArrayHelper.getFoo(MyStruct, 4);

MyStruct[50].aaa = 7;
ArrayHelper.getFoo(MyStruct[5], 0);
