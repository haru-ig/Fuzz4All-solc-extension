pragma solidity ^0.8.0;
contract newY {
    struct s {
        uint256 x;
    }
    function s(uint256 x) public {
        s memory a;
        a.x = x;
    }
    uint256 public f(uint256 z) public view returns (uint256) {
        uint256 x = z / s(y);
        return s(x);

    }
}
