pragma solidity ^0.8.0;
contract InlineAssemblySemVer1{
    function test() public pure returns(string memory text) {
        assembly {
            text := 'Hello, World!'
        }
    }
}
pragma solidity ^0.8.0;
contract InlineAssemblySemVer2{
    uint256 i;
    constructor() public  {
        i =42;
        assembly {
            i := 43
        }
        assert(i == 42);
    }
}
