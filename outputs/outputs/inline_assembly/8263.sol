pragma solidity ^0.8.0;
contract Test3{
    function test() public pure returns(bool){
        bytes32 addr = "0xaBcdBaCd7aBcd7aBcd7aBcd7ABCD7ABcd7aBCdD7A9cD71A1B17";
        bytes calldata data = abi.encode(addr);
        assembly {
            let addr := mload(add(data,32))
            mstore(add(data,32),addr)
        }
        return bytes(assembly.mload(add(data,32))).length;
    }
}
