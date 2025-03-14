pragma solidity ^0.8.0;
 contract Semantic0008 {
    function noRevert(uint160 x1) public pure {
        require(x1 > 1);
        x1--;
    }
}


contract Semantic0009 {
    constructor() public {}
}
pragma solidity ^0.8.0;
 contract Semantic0010 {
    event SetNewBalance(address, uint160);
    function setBalance(uint160 a) public {
        SetNewBalance(address(this), a);
    }
}
