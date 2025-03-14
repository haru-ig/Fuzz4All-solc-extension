pragma solidity ^0.8.0;
contract TestMutated73{
    struct Struct21 {
        bytes foo;
    }
    function func1(Struct21 storage item) public {
        Struct21 storage new_item = item;
        new_item.foo.length;
        delete new_item.foo;
    }
}
