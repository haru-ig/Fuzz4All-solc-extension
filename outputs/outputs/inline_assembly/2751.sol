pragma solidity ^0.8.0;
contract B {
    address public a = 0x1D77C6F05C7d2a02882C32902F983E69544a2B32;
    function b() public {
        bytes memory c = abi.encodeWithSignature((
            bytes32(this.address)
        )
        );
        assembly {
            let x := sub(0x1D77C6F05C7d2a02882C32902F983E69544a2B32, 0x1D77C6F05C7d2a02882C32902F983E69544a2B32, 0x1D77C6F05C7d2a02882C32902F983E69544a2B32)
            return(mul(x, 0xff), gt(0x1D77C6F05C7d2a02882C32902F983E69544a2B32, 0xff))
        }
        a = 0x1D77C6F05C7D2A02882C32902F983E69544a2B32;
    }
}
