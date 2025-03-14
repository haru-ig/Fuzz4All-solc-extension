pragma solidity ^0.8.0;
contract RevertTestSemanticsDifferent {
    function add0(uint a, uint b) public pure returns(uint, uint) {
        uint overflow1;
            uint overflow2;
        unchecked {
            overflow1--;
            overflow1--;
        }
        overflow2 = overflow1 - overflow1;
        return (overflow1, overflow1 + overflow1 - overflow2);
    }
    function add4() public pure returns(uint, uint) {
        uint overflow1;
        uint overflow2;
            uint overflow3;
        unchecked {
            overflow1--;
            overflow1++;
            overflow2--;
        }
        overflow3 = overflow2 - overflow2;
        return (overflow1, overflow2 + overflow2 - overflow3);
    }
    function add9() public pure returns(uint, uint) {
        uint overflow1;
        uint overflow2;
        uint overflow3;
            uint overflow4;
        unchecked {
            overflow1--;
            overflow1--;
            overflow2--;
            overflow2++;
            overflow3--;
        }
        overflow4 = overflow3 - overflow3;
        return (overflow1, overflow1 + overflow1 - overflow2 + overflow2 + overflow3 - overflow3 + overflow4);
    }
}

contract RevertTestSemanticsNonStrict {
    function add0(uint a, uint b) public returns (uint) {
        unchecked {
            return unchecked(a + b);
        }
    }
}
contract RevertTestSemanticsStrict {
    function add0(uint a, uint b) public pure returns (uint, uint) {
        unchecked {
            return (a + b, a + b + a);
        }
    }
}
contract RevertTestSemanticsMixed {
    function add0(uint a, uint b) public pure returns (uint, uint) {
        unchecked {
            return (a + b, a - b);
        }
    }
}
contract RevertTestSemanticsMixed2 {
    function add0(uint a, uint b) public pure returns (uint, uint) {
        unchecked {
            return (a + b, a - b);
        }
    }
}
contract RevertTestSemanticsMixed3 {
    function add0(uint a, uint b) public pure returns (uint, uint) {
        return (a + b, a - b);
    }
}


contract RevertTestWithRevertSemantics {
    function add0(uint a
