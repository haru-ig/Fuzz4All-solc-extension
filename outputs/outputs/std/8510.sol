pragma solidity ^0.8.0;
contract MutationEquivalence5
{
    function runWithMutation(uint256 n) public {
        for (uint256 i = 0; i < n; i++) {
            uint256 x = getRandom();
            uint256 y = getRandom();
            uint256 z = mutatedAdd(x, y);
            uint256 w = mutatedSub(x, y);
            uint256 aa = mutatedMul(x, y);
            uint256 ba = mutatedDiv(x, y);
            uint256 xa = mutatedAddmod(x, y, 1000);
            uint256 ya = mutatedSubmod(x, y, 1000);
        }
        print();
    }

    function println(string memory s) public pure {
        if (s.length > 32) {
            revert("println");
        }
        assembly {
            sp - s
            let start := sp
            sp := s
            jump(start, 32)
        }
    }


    function getRandom() private pure returns (uint256) {
        uint256 seed = blockhash(block.number - 1) % 2147483648;
        return random(seed) % 2 - 1;
    }


    function mutatedAdd(uint256 x, uint256 y) private pure returns (uint256) {
        return (x + y) % 2**256;
    }


    function mutatedSub(uint256 x, uint256 y) private pure returns (uint256) {
        return 1 + x - ((x - y) % 2**256);
    }


    function mutatedMul(uint256 x, uint256 y) private pure returns (uint256) {
        return x * y % 2**256;
    }



    function mutatedDiv(uint256 x, uint256 y) private pure returns (uint256) {
        return (y * ((x % y) + y)) % 2**256;
    }


    function mutatedAddmod(uint256 x, uint256 y, uint256 m) private pure returns (uint256) {
        return x + ((x % m) + y) % m;
    }
