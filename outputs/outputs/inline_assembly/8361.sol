pragma solidity ^0.8.0;
contract SolveAssembly {
    function test() public pure returns(uint) {
        bytes memory x = hex"7a";
        assembly {
            x := x.concat(x)
            x := x.substring(10,2)
        }
        return 0;
    }
}
