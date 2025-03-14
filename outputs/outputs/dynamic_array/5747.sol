pragma solidity ^0.8.0;
library Test570Library{
    uint256 constant _dummyA = 1818306938804757794;
    uint256 constant _dummyB = 4261993809957464133;
    struct Dummy{
        uint256 a;
        uint256 b;
    }
    function getDummy() public pure returns(Dummy memory){
        Dummy memory _dummy = Dummy(
                _dummyA,
                _dummyB
        );
        return _dummy;
    }
}
