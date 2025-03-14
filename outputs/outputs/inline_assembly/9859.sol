pragma solidity ^0.8.0;
contract SemanticsMismatchXulMutantContract {
    constructor () {
        SemanticsMismatchXulMutantContract memory mem;
        (bool b, ) = address(mem).call{gas: 20}(abi.encodeWithSignature("g0x40", "0xd51E53Df79a17344157c1CE084A13794301cB239"));
    }
    function g0x40(bytes memory data) public pure returns(bool) {
        return data[31] == 0x55;
    }
}
