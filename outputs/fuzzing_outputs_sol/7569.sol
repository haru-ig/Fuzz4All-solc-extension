pragma solidity ^0.8.0;
contract LegacyFallbackModifier {
    receive() external pure {}
    function fallback() external pure {
    }
}
contract Caller {
    uint gasLimit = 100000000000000000000000;
    function noFallback() public returns (uint) {
        return 42;
    }
    function noReceiverFallback() public returns (uint) {
        uint payable _gasUsed = 0;
        (bool success, uint cost) = payable(address(this)).call{value: gasLimit}("");
        assert(success);
        return 42;
    }
    function fallback() public payable returns (uint) {
        _;
    }
}
contract Test {
    function run() public {
        MutedFallbackModifier mut = MutedFallbackModifier(0x3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a);
        ContractFallback functionFallback00;
        bool noExceptionCode01;
        uint noExceptionCode02;
        uint noExceptionCode03;
        bool noExceptionCode04;
        uint8 noExceptionCode05;
        uint maxCode;
        uint maxCode2;
        uint32 maxCode32;
        uint128 maxCode128;
        uint256 maxCode256;
        uint8 maxCode296;
        (bool success, uint gasUsed) = mut.fallback();
        functionFallback00=functionFallback00<0;
        noExceptionCode01=functionFallback00==0x3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a==0;
        noExceptionCode02=functionFallback00==0xe1cf8512508923d32d395c42814a92340b18de6a;
        noExceptionCode03=functionFallback00>=0;
        noExceptionCode04=functionFallback00>0;
        noExceptionCode05=functionFallback00<=0;
        maxCode=0b1111111;
        maxCode2=0xff9;
        maxCode32=0xffffffff;
        maxCode128=0xfffffffffffffffffff;
        maxCode256=0xfffffffff000000000000000000000000000000000000000000000000000000000000;
        noExceptionCode032=functionFallback00==0x3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3a3
