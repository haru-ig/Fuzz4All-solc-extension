pragma solidity ^0.8.0;
contract T8FS_mod {
    T8FS_mod t;
    function main() public initializer {
        t.a7 = msg.sender;
        t.a9 = address(new T8FS_mod{i: 1}());
        t.a12 = address(new T8FM_mod{i: 2});
        t.i;
        t.i;
        t.a9 = address(new T8FM_mod{i: 3});
        t.a12 = address(new T8FS_mod{i: 4});
        t.a20 = msg.sender;
        t.i60;
        t.i67;
        t.a9 = msg.sender;
        t.i0;
        t.a1;
        t.i0;
        t.a7 = msg.sender;
        t.a1;
        t.i29;
        t.a12 = address(new T8FS_mod{i: 5});
        t.a7 = msg.sender;
        t.a29;
        t.a12 = address(new T8FS_mod{i: 6});
        t.a15;
        t.a15;
        t.i29;
        t.a15;
        t.a9;
        t.a1;
        a;
    }
}

library AddressUtils {

    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
