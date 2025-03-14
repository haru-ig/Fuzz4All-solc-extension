pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV01 {
    EquivalentABIv08AbiV01SemanticallyEquivalentInterface a;
    function f() public {
        a.f();
    }
}
contract EquivalentABIv08AbiV02 {
    EquivalentABIv08AbiV01SemanticallyEquivalentInterface a;
    enum E { A }
    function f() public {
        a.f();
    }
}
contract EquivalentABIv08AbiV1 {
    EquivalentABIv08AbiV01SemanticallyEquivalentInterface a;
    enum E { A }
    function f() public {
        a.f();
    }
}
contract EquivalentABIv08AbstractSemanticsExample {
    EquivalentABIv08AbiV01SemanticallyEquivalentInterface a;
    enum E { A }
    function f() public {
        a.f();
    }
}
