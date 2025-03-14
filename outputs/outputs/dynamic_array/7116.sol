pragma solidity ^0.8.0;
contract Test3 {
    bool[] public arr;
    uint[] public data;
    uint[] inputData;
    uint[] outputData;
    uint constant N = 5;
    function test(uint x) public {
        uint[] storage oldStorage1 = data;
        for (uint i=0; i < oldStorage1.length; i++) {
            data.push(x);
            inputData.push(x);
            outputData.push(x);
        }
        uint[] oldStorage2 = inputData;
        uint[] oldStorage3 = outputData;
        for (uint i=0; i < N; i++) {

            uint y = oldStorage3[0];
            inputData[0] = uint(oldStorage1.length) + x;
            oldStorage3[0] = uint(oldStorage1.length);
            oldStorage1.push(inputData[0]);
            inputData.push(x);
            outputData.push(y);
            outputData.push(x + y);
        }
    }
}
