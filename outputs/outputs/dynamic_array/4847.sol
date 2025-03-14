pragma solidity ^0.8.0;
contract Test3 {
    uint[3] memoryArray;
    function ArrayUint() public {
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[1]=memoryArray[1]+3;
        memoryArray[2]=memoryArray[2]+7;
    }
}

pragma solidity ^0.8.0;
contract test1 {
    function calldataarray() public pure returns(uint32 r) {
        r = 9;
    }
    function check() public {
        address add = 0x7770af0fC869E46683DC071184e2E87769B24AE9;
        if(calldataarray()!=0x0600ea69000000000000000000000000000000000000000000000000000000000) {
        emit CheckSuccess("Correct");
        }
        else {
        emit CheckFailure("Incorrect");
        }
    }
}
