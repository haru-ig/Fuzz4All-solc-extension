pragma solidity ^0.8.0;
contract Mutate15a {
    function bad() public pure {

        uint256 m = 0xfe;
        uint256 r = (uint256(m) | 0) - m;
    }


    constructor(bytes memory b) public {
        bad();
    }
}
