pragma solidity ^0.8.0;

contract Foo {
    function bar(bool b) public view returns(uint32, uint32, uint32, uint32) { return (0, 2, 4)}
    function baz(uint i) public pure returns (uint) { return 3 }
    function f() public pure returns (uint) { return 3 }
}

library Lib {
    using Foo for Foo.bar.returnData;
}
function() public view returns(uint32 i, uint32, uint32, uint32) {
    Lib.Foo.bar.returnData memory result;
    (i, result.a, result.b, result.c) = Lib.FooForPublic.bar.returnData(2);
    assert(result.a == i && result.b == 0 && result.c == 2);
    i = 123;
    return (123, i, i + 1, i);
}
function test(Lib.FooForPublic memory c) public view returns (uint32 a, uint32 b, uint32 c, uint32) {
    Lib.FooForPublic.bar.returnData memory result;
    (a, b, c) = Lib.FooForPublicForPublic.bar.returnData(2);
    bytes memory b1;
    (b1, result.a, result.b, result.c) = Lib.FooForPublic.bar.returnData(2);
    b1;
    bytes memory b2;
    (b2, address(), result.a, result.b, result.c) = Lib.FooForPublic.bar(2);
    b2;
    return(result.a, result.b, result.c, a + b);
}

address
function
internal
log()



returns (
    40,
    50
) {
    return (
        40,
        50
    );
}

function
internal
setUpAccountWithBalance(

uint
publicAmount

)


{

    uint balance = msg.value;
    msg.sender.transfer(balance);
}
 function
internal
testRevert(

address a,
    uint b,
    bool trueOrFalse)

reverts()

{
    a.call.value(b)();
}
