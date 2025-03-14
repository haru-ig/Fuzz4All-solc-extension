pragma solidity ^0.8.0;
contract newcontract
{
    function runit() public {
        bytes1 sig = signatureOf("function1()");
        assert(bytes1(0x10).eq(sig));
    }
    function signatureOf(string memory data) public pure returns(bytes1)
    {
        return bytes1(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", data)));
    }
}
