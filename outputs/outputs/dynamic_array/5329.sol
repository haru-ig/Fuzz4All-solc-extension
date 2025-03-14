pragma solidity ^0.8.0;
contract Test75 {
    function j(uint256 x) public pure {
        j(x);
        j(x);
    }
}
contract Test76 {
    function j(uint256 x) public pure {
        j(x);
        j(x);
        j(x);
    }
}
contract Test77 {
    uint256 i_;
    function j(uint256 x) public pure {
        i_++;
    }
}
