pragma solidity ^0.8.0;


contract InlineAssembly {

    function constantInline() public pure {
        uint256 _x = uint256(keccak256("inline assembly"));
    }


    function constantFunction() public pure {
        {
            uint256 _x = uint256(keccak256("inline asm"));
        }


    }


    function asmCalled() private pure {
        uint16 x = uint16(uint256(keccak256("inline asm")));
        uint16 y = uint16(keccak256("functionasmCalled")));
    }


    modifier onlyByFunctionCaller(Address payable _functionCaller) {
        require(msg.sender == _functionCaller);

        _;
    }


    constructor() public onlyByFunctionCaller(msg.sender) {}
}
