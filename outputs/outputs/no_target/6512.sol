pragma solidity ^0.8.0;
contract myContractH {
    function h() public pure returns(bytes4){ return bytes4(keccak256(type(h).tobytes())); }
}
contract myContractL is myContractH{
}
contract myContractO is myContractH{
}
