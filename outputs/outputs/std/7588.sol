pragma solidity ^0.8.0;
contract BetterCase_0 {
    struct MyStruct {
        bool b;
        uint m;
        address addr;
        string s;
    }
    constructor() {
        MyStruct s;
        myStruct.b = false;
        myStruct.m = uint(1);
        myStruct.addr = address(1);
        myStruct.s = "abc";
    }
    MyStruct myStruct;
}

pragma solidity ^0.8.0;
contract BetterCase_2 {
    MyStruct myStruct;
    constructor() {
        MyStruct memory a;
        myStruct = a;
    }
}

pragma solidity ^0.8.0;
contract BetterCase_3 {
    constructor(MyStruct memory a) {
        myStruct.my_field = "abc";
    }
}

pragma solidity ^0.8.0;
contract BetterCase_5 {
    IERC20 myToken;
    constructor(IERC20 myToken_) {
        myToken = myToken_;
    }
}
