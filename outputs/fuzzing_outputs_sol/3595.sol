pragma solidity ^0.8.0;
contract MutateSemantic6 {
    bytes32 constant MUTATION = 0xE8886AFD1A94EC1D12089244AF61A91ECEB88B12;
    function mutate(address x, bytes memory data) public pure {
        (uint status, bytes memory result) = address(x).delegatecall(data);
        require(status == 0);
        address(x).delegatecall(result);
    }
}
contract MutateSemantic6NoCaller {
    bytes32 constant MUTATION = 0xE8886AFD1A94EC1D12089244AF61A91ECEB88B12;
    function mutate(address x, bytes memory data) public pure {
        unchecked {
            (uint status, bytes memory result) = x.delegatecall(data);
            require(status == 0);
            uint256 x;
            assembly {
                x := mload(result)
            }
        }
    }
}
contract MutateSemantic6WithCaller {
    bytes32 constant MUTATION = 0xE8886AFD1A94EC1D12089244AF61A91ECEB88B12;
    function mutate(address x, bytes memory data) public pure {
        (uint status, bytes memory result) = x.delegatecall(data);
        require(status == 0);
        address(x).delegatecall(result);
    }
}
contract Caller {
    function run() public pure returns(bytes memory) {
        return abi.encodeWithSignature("msg.sender", 1, 1);
    }
}
