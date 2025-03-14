pragma solidity ^0.8.0;
contract Caller {
    function calculateAdd1(uint input1, uint input2) public pure returns (uint result){
        result = (input1 + input2);
        assert(result == 3);
    }
    function calculateSub1(uint input1) public pure returns (uint result){
        result = input1 - 1;
        assert(result == 9);
    }
    function calculateSub2(uint input2) public pure returns (uint result){
        result = input2 - 4;
        assert(result == 15);
        result -= 4;
        assert(result == 5);
    }
    function main() public {
        uint result;
        address addr = new uint[](2){uint(0x1111111111111111111111111111111111111111111), uint(0x2222222222222222222222222222222222222222)};
        for(uint i=0; i<2; i++){
            result = addr[i].calculateAdd1(9, 7);
            require (result == 10);
            address dummyCallerPtr = address(uint(addr[i]));
            address newCaller = new Caller();
            result = newCaller.calculateAdd1(9, 7);
            require (result == 10);
            uint result2 = newCaller.calculateAdd1(9, 7);
            require (result == result2);
            result = dummyCallerPtr.calculateAdd1(9, 7);
            require (result == 10);
            result = newCaller.calculateAdd1(9, 7);
            require (result == result2);
            result2 = newCaller.calculateAdd1(9, 7);
            require (result == result2);
        }
    }
}
