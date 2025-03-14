pragma solidity ^0.8.0;
contract Caller{
    function callContract(address target, uint data) public returns (uint result){
        bytes memory dataToCopy = abi.encode(data,'stringdata'.repeat(28));
        result = abi.decode(target.call(dataToCopy), (uint));
        assert(result == data);
        return result;
    }
}
