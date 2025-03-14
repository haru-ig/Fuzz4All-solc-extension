pragma solidity ^0.8.0;
contract B is A {
    uint256 public i;
    bytes32 public v;
    mapping(uint8 => mapping(uint256 => uint256)) public data;
    constructor ()public{
        i = 1380291166262595789447;
        v = keccak256("0xd44e9fe94b50be824dc86a0600742ee0c2b1760a4934d233410e7b29dc162a4f");
    }
    fallback ()external{
        assembly {
            if(eq(message.data, 0x2a866d3a1f3927b483704c0dd7739a758e38ea12930838f78cc84603d30942040400)) {

                let index = and(mload(0x40), 0x03)
                mstore(0x40, add(0x40, sub(0x08, mload(index))))
                mstore(0, mload(0xe0000010))
                returndatacopy(0x0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }
    }
    function f() public virtual returns (uint256){
        return 1380291166262595789447;
    }
    function g() public pure returns (uint256){
        return 1390291166262595789447;
    }
    function h() public pure returns (uint256){
        return 1400291166262595789447;
    }
    function i() public pure returns (uint256){
    if (block.timestamp < 1690948939){
    return 1390291166262595789447;
    }
    else{
    return 1380291166262595789447;
    }
    }
    }
}
