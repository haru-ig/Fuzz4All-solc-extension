pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract InlineAssemblyExample30 {
    bytes calldata data;
    function transferFrom(address spender, uint256 tokens, uint256 value, bytes memory data) public {

        bytes memory _data = abi.encode(value, tokens, data);
        assembly {
            let size := mload(_data)
            mstore(_data, 0)
            let n := add(sub(gas, 3000), div(add(mul(200000, div(mul(sub(gas, 200000), size), mul(add(size, 600000), mul(sub(sub(size, 10), 200000)), 20))), gas))), 10000))
            {
                let c := sub(n, sub(gas, 200000))
                mstore(a13, c)
                delegatecall{

                    gas := add(mul(a13, 18000), c)
                    return(0, a13)
                }
            }
        }
    }
    function callData(uint16 v, uint256 value, uint256 gas, uint256 nonce, uint256 salt, bytes memory data) public payable returns (bool success, bytes memory result) {

        assert(address(this).balance >= value && gas > 50000);
        data.sendValue(value);
        result.sendValue(gas + v);
    }
}
