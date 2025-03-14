pragma solidity ^0.8.0;
contract Mutation_FunctionCaller9 {
    event LogData(uint data);
    uint private data;
    function update(uint newAuthorPrice) public {
        data = newAuthorPrice;
        emit LogData(data);
    }
}
