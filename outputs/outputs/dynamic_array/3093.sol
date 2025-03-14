pragma solidity ^0.8.0;
contract AssignmentModulation_V7 {
        uint[] public x;
        mapping (uint => uint) public test;
        constructor () public {
            x = new uint[](2);

            test[1] = 1;

            for (uint i = 1; i <= 1; i++) {
                test[i]++;
            }

            test[1] = 1;

            for (uint i = 0; i <= 0 ; i++){
                test[x[0]]++;
            }
        }
    function doWork() public returns(uint){

        uint i = 5;
        uint result = 0;

        for (uint j = 5; j >= 0; j--) {

            result = result;
            result = result * x[i];
            result = result + x[i];

            i--;

        }
        return result;
    }
   function getAndStorePairs() public returns(uint){

        uint i = 5;
        uint result = 0;
         uint tmp = 0;

        for (uint j = 5; j >= 0; j--) {
            result = result;
            result = result + test[i];
            result = result * x[i];
            result = result + x[i];

            tmp = tmp;
            i--;
        }
        return result + tmp;
    }
}
