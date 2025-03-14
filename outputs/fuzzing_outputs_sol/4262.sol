pragma solidity ^0.8.0;
contract SmallAddressNoFallbackCaller {
    function Mutator() public {}
}
pragma solidity ^0.8.0;
contract Caller {
    address public foo = "0xB154429d484792f29608132C36C3053E6527E4e4";
    function Mutator() public {
        uint x;
        uint y;
        (x, y) = Mutator.testFoo();
    }
    receive() external payable {
        assert(false);
    }
}
