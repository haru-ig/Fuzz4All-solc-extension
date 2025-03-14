pragma solidity ^0.8.0;
contract first{
    bytes8 a;
    bytes8 b;
    constructor() public {
        check(10 < a);
        a -= 2;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }

}
contract second{
    bytes8 a;
    bytes8 b;
    bytes8 c;
    bytes8 d;
    bytes8 e;
    constructor() public {
        check(6 < a);
        check(5 < d);
        a -= 10;
        c -= 2;
        d -= 13;
        e -= 7;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }

}
contract third{
    address a;
    address b;
    address c;
    address d;
    address e;
    constructor() public {
        check(13 < b);
        a = msg.sender;
        b -= 25;
        c -= 33;
        d -= 8;
        e -= 17;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}

pragma solidity ^0.4.21;
contract ContractSource is first, second, third{
   uint a;
    address a1;
    address a2;
    function setFirstAddress(address _a1) internal {
       a1 = _a1;

    }
    function setSecondAddress(address _a2) internal {
       a2 = _a2;
       a = _a1;
    }
    function f() public view {
       a1.transfer(a2.call.value(address(this).balance)());
    }
    function g() public view {
       a1.call.value(address(this).balance)();
    }
    function h() public view {
