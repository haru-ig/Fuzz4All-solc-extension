pragma solidity ^0.8.0;
contract MutatorS15_2 {
    uint256 constant ONE            = 1;
    uint256 constant ONE_BETTER     = ONE * 10;
    uint256 constant ONE_PLUS_SIX    = ONE_BETTER + ONE_BETTER;
    uint256 constant SIX             = 6;
    uint256 constant ONE_PLUS_SIX    = ONE_PLUS * SIX;
    uint256 constant SIZE            = ONE_PLUS_SIX + ONE;
    uint256 constant SIZE_2          = SIZE + SIZE;
    uint256 constant SIZE_3          = SIZE_2 + SIZE;
    uint256 constant SIZE_4          = SIZE_3 + SIZE;
    uint256 c = ONE;

    bool settable;

    constructor () public {
        uint256[] memory i = [ONE, SIX];
        i[0] = ONE_PLUS_SIX;
        i[1] = SIX;
        settable = true;
   }

    function mutate() public {
        c += ONE_PLUS_SIX;
        settable = false;
        c -= ONE_PLUS_SIX;
    }

    function read() public view returns (uint256[] memory) {
        return [ONE, SIX];
    }

    function readSet() public view returns (uint256[], uint256[]) {
        return [ONE_PLUS_SIX, SIX];
    }

    function writeSet(uint256[] memory a, uint256[] memory b) public {
        require(!settable);
        (, ) = a;
        assert (SIZE == ONE_PLUS);
        (, ) = b;
        assert(SIZE == ONE_PLUS);
    }

    function write(uint256 i) public {
        require(!settable);
        i = i * 10;
        assert(SIZE == ONE_BETTER);
    }
}

pragma solidity ^0.8.0;
contract MutatorS15_3 {
    uint256 constant ONE            = 1;
    uint256 constant ONE_PLUS_SIX    = ONE_PLUS + ONE_PLUS;
    uint256 constant SIX             = 6;
    uint256 constant ONE
