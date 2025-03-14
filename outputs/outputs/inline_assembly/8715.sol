pragma solidity ^0.8.0;
contract Modul {
    uint[] nums;
    uint[] bbb;
    function f()public{
        for (uint i = 0; i < 2; i++){
            for (uint j = 0; j < nums.length; j++) {
                bbb[j] = bbb[j] + nums[j] * 2;
            }

        }
        for (uint i = 0; i < 3; i++){
            for (uint j = 0; j < bbb.length; j++) {
                nums[j] = bbb[j];
            }
            if (i == 0) {
                nums[nums.length-1] = 32;
            }
            if (i == 1) {
                nums.push(5);
            }
        }
    }
}
