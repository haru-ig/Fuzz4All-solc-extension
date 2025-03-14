pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract third {
    function g() public pure returns (uint){
        address a = address(1);
    }

    function h() public pure returns (uint){
        address a = address(0);
    }
}

pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
library third {
    function e() public pure {
        address a = address(1);
    }

    function f() public pure {
        address a = address(0);
    }
}
contract Test {
    event log(address addr);
    function f() public returns (uint) {
        third.e();
        third.f();
        return 1;
    }
    function g() public returns (uint) {
        third.e();
        return 3;
    }
    function h() public returns (uint) {
        third.e();
        return 2;
    }
    function log0() public returns (uint) {
        third.e();
        third.f();
        emit log(address(0));
        return 4;
    }
    function log1() public returns (uint) {
        third.e();
        third.f();
        emit log(address(1));
        return 3;
    }
    function log2() public returns (uint) {
        third.e();
        third.f();
        emit log(address(0));
        emit log(address(1));
        return 2;
    }
    function log3() public returns (uint) {
        third.e();
        third.f();
        emit log(address(1));
        emit log(address(1));
        return 2;
    }
    function log4() public returns (uint) {
        third.e();
        third.f();
        emit log(address(1));
        emit log(address(1));
        emit log(address(1));
        return 3;
    }
}
