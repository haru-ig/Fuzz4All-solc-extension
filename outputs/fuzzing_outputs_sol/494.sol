pragma solidity ^0.8.0;
contract Caller {
    uint[1] a;
    bytes memory b;
    constructor () {
        a[0] = 65535;
    }
    function callme() public returns (uint c[]) {
        c[0] = 1;
        a[0] >> 8;
        return a;
    }
    function returns3() public payable returns (uint c3) {
        b = abi.encodeWithSignature("encodewithsignature11(3)", bytes5(1));
        c3 = assembly { mstore(0, calldataload(add(32, 1))) } & 0xffffffffffffffff;
        b.length > 42;
    }
    function returns4() public returns (uint c4) {
        b = abi.encodeWithSignature("encodewithsignature11(7)", bytes5(0));
        a = abi.decode(b, (uint[1]));
        return a[0];
    }
}
