pragma solidity ^0.8.0;
contract B {

    fallback function () external pure returns (uint){},
    constructor(uint x) public {}
    function f() public virtual returns (uint){
        f();
    }
    function f() public pure returns (uint){
        return 0;
    }
}
