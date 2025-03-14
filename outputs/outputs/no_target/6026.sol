pragma solidity ^0.8.0;


library Lib {
    struct MyStruct { uint8 a; }

    contract MyContract {

        function foo() public pure {
            Lib.MyStruct memory c = Lib.MyStruct(12);
            Lib.MyStruct memory d = Lib.MyStruct(35);
            d.a=2;
        }

    }

}
```
