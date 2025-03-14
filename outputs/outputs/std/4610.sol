pragma solidity ^0.8.0;
contract Mutated {
    uint[] public data;
    uint[] public randomData;
    function push(int i) public {
        data[data.length] = uint(i);
    }
    function pushRandom() public {
        randomData.push(uint(uint8(uint(blockhash(block.number - 2))))))
    }
}
