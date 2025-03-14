pragma solidity ^0.8.0;
contract x is i {
    uint m;
    function m() private pure returns (uint) {
        return 17;
    }
    function g() public {
        require(false == true);
        m = 0;
        m = 1;
    }
}
contract y is x {
    constructor (uint x_) public {
        m = x_;
    }
}
