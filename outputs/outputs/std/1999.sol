pragma solidity ^0.8.0;
contract Array_mutated_1 {
    uint[5] array;
    function addOne() returns (uint) {
        return array.push(1);
    }
}
pragma solidity ^0.8.0;
contract Array_mutated_2 {
    uint[] array;
    function addOne() returns (uint) {
        array.push(1);
    }
}
pragma solidity ^0.8.0;
contract Array_mutated_3 {
    uint[5] array;
    function addOne() returns (uint) {
        array.push(1);
    }
}
pragma solidity ^0.8.0;
contract Random {
    int[3] array;
    function generateRandomInt() returns (int) {
        int x;
        do{
            x = uint(keccak256(abi.encodePacked(blockhash(blockhash(block.number), blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash(blockhash((blockhashes(blockhash(blockhash(blockhash(block.coinbase)))))))))))),)))))))));
        } while (x >= array[0]);
        return x;
    }
     function generateRandomIntArray() returns []{
        int[3] randomArray;
        for (uint i = 0; i < 3; ++i) {
            randomArray[i] = generateRandomInt();
        }
        return randomArray;
    }
