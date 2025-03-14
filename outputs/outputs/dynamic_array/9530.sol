pragma solidity ^0.8.0;
contract Main2 {
    function returnArrayLength (uint len) public pure returns (uint[]) {
        uint[] memory foo = new uint[](len);
        for (uint i = 0; i < len; i++) {foo[i] = 1;}
        for (uint j = 0; j < len; j++) {
            foo[j] += 1;
        }
        return foo;
    }
    uint[] public array;
    function foo() public {
        array = returnArrayLength(10);
    }
    function callGet(uint start, uint val) public {
        printf("%u %u %u ", array[start], val, array[start + val]);
    }
}
uint[] a = Main2(0xf2E12122).returnArrayLength(65535);
(a[1]).callGet(1, a.length - a[1]);
