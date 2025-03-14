pragma solidity ^0.8.0;
@pure  contract Array1 is MutateProgram {
    uint[1] numbers1;
    function main() public pure {
        console.log("Array numbers1: ", numbers1.length);
        console.log("First element: ", numbers1[0]);
        numbers1.push(10);
    }
}
uint[1] memory numbers1;
contract Array2 is Array1 {
    uint[1] numbers2;
    function main() public pure {
        console.log("Array numbers2: ", numbers2.length);
        console.log("First element: ", numbers2[0]);
        numbers2.push(10);
    }
}
