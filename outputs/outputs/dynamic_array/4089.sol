pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint public data2;
    uint public data3;
    address public addr1;
    uint public addr2;
    uint public addr3;

    function f() public payable {

        uint m = 2 ** 256;
        uint a = 3 * m + 1;

        addr1 = payable(a);
        addr2 = 0*addr1;
        addr3 = 3*addr1 + m + a;

        data1[0] = 2 * 2 ** uint(uint32(bytes1(0x1) ^ addr3)) + a + 1;
        data2 = 2 * 2 ** int(bytes2(addr2 ^ addr3)) + 1;
        data3 = 2*2**bytes3(addr3);
        data1[1] = data2;

    }

    function get() public pure returns (uint){
        return uint8(0x1);
    }

}
