pragma solidity ^0.8.0;
contract E {
    uint16[1] public a;
    struct S {
        uint16 e;
    }
    uint16[1] a_;
    function f() public {
        a_ = S({ e:a[0] }).e;
    }
}

pragma solidity ^0.8.0;
contract E {
    uint16[1] public a;

    function f() public {
        a = b;
    }
}
