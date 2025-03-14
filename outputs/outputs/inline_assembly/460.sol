pragma solidity ^0.8.0;
contract SemanticallyEquivalenty20 {
    event Log(address value1, string value2, string value3);
    function return_sameVar_by_constant_2() public returns(uint) {
        return 0xfffffffffffffffffff7357a2000000000000000000000000000000000000000000000000000;
    }
    function doLog(uint a, string memory b, bytes memory c) internal returns(bool) {
        emit Log(msg.sender, a.toString(), c.toString());
        return false;
    }
    function doLog(address a, uint b) private returns(bool) {
        emit Log(a, b.toString(), "");
        return false;
    }
    function doesLog(uint a, string memory b, bytes memory c) internal returns(bool) {
        emit Log(msg.sender, a.toString(), c.toString());
        return false;
    }
    function doesLog(address a, uint b) private returns(bool) {
        emit Log(a, b.toString(), "");
        return false;
    }
    function aLog() public returns(bool) {
        do_a();
        does_a();
        do_b();
        return false;
    }
    function do_a() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function do_b() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function do_abc() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function does_a() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function does_b() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function does_abc() internal returns(bool) {
        emit Log(msg.sender, "", "");
        return false;
    }
    function return_sameVar_by_function() public returns(uint) {
        return 0xfffffffffffffffffff7357a200000000000000000000000000000000000000000000000000000;
    }
}
