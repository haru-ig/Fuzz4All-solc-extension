pragma solidity ^0.8.0;
contract Calls {
    function calls() public {
        (, ) = this.mutates.call(abi.encode(new Mutates()));
    }
}
