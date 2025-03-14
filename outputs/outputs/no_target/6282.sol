pragma solidity ^0.8.0;
contract C {
    uint myUint8 = 0x1;
}
contract Mutateable {
    uint public myUint64 = 0x1;
}
contract Composable {
    function f(uint256) internal returns (uint256) {
        return myUint64;
    }
}
contract Composable2 is Composable {
    function f(uint256) internal returns (uint256) {
        return myUint64 ^ myUint8;
    }
}
contract Caller {
    function getValue(uint) public pure returns (uint) {
        return C().f(address(this).call{value: abi.encode(1)}) & (address(C()).f(address(this).call{value: abi.encode(1)}) << 1);
    }
}
contract Main {
    uint public myUint16;

    modifier m() {
        myUint64 = 0x1;
        _;
        myUint64 = 0x2;
    }

    constructor() {
        myUint16 = 0xff;
    }

    function test() public view returns (uint16) {
        uint myUint256;
        Composable().f(address(this).call{value: abi.encode(1)}).call(abi.encode()).call(abi.encode(1000));
        Composable().f(uint8(msg.value)).call(abi.encode()).call(abi.encode(10000)).call(abi.encode(1000)).call(abi.encode(myUint8), abi.encode(1000));
        Composable2().f(0xff).call(abi.encode(myUint8));
        Composable2().f(0xffff).call(abi.encode(uint(0xffffffffffffff)));
        Composable2().f(0xffffffffffff).call(abi.encode());
        return C().getUint(address(this).call{value: abi.encode(1)}).call();
    }
}
/* Please create a test which:
1. Modifies the contract C.
2. Calls the function getValue with an out-of-bounds address at 0x1
3. Calls the function getValue at address(this).add(1)
4. Calls the contract that inherits from C.
5. Calls the inherited function getValue that returns uint32(uint(0xffffffffffffff))
6. Calls the inherited function getValue for myUint8
7. Calls the inherited function getValue for 0xfc00...
