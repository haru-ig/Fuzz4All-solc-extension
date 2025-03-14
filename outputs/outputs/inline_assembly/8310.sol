pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public {
        (uint _r, uint _g, uint _b, uint _a) = abi.decode(tx.origin, (uint, uint, uint, uint));
        assembly {
            let x := mload(_r)
            let y := mload(_g)
     }
    }
}
