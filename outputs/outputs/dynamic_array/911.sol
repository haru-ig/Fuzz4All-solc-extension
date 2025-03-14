pragma solidity ^0.8.0;
contract NewSolidity {
    struct Foo {
        uint dataField;
    }
    Foo foo;
    Foo[] fooArray;
    uint[] barArray;
    function x() public {
        foo = fooArray[0];
        uint fooIndex;
        (uint fooIdx, ) = foo.dataField;
        (fooIndex, ) = fooArray[fooIdx].dataField;

        uint barIndex;
        foo = fooArray[barIndex];
        (uint barIdx, ) = foo.dataField;
        (barIndex, ) = fooArray[barIdx].dataField;
        assert(fooIndex > barIndex);
        assert(fooIndex == barIndex);
    }
}
