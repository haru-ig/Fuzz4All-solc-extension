pragma solidity ^0.8.0;

contract Array19_not_contract {
    int8 x;
    function Array19_not_contract() {
        x = 0x80;
    }
    function multiply(int32 i) external pure returns(int128){
        return(int128(i) * x);
    }
}
pragma solidity ^0.8.0;
contract Array19_solidiarity {
    int8 x;
    uint256[] public memory1;
    uint256[] public memory2;
    uint256[] public memory3;
    int32[] public memory4;
    modifier Mutate_array1(uint256[] memory memory1) {
       memory1; memory2; memory3; memory4;
       memory2 = memory1;
       memory1 = memory3;
       memory3 = memory2;
       _;
       memory1 = memory2;
       memory2 = memory3;
       memory3 = memory1;
    }
    modifier Mutate_array2() {
        memory4 = memory2;
        memory2 = memory3;
        memory3 = memory4;
    }
    modifier Mutate_array3() {
        x;
        x *= 2;
        _;
        x *= 2;
        x = 0x7F;
        x *= 1000;
    }
}
