pragma solidity ^0.8.0;
interface ITest70 {
    function foo() external pure returns(int32);
}
contract Test70 is ITest70 {
    constructor() public {

        foo();
    }
    function foo() public pure virtual returns(int32) {
        return 1;
    }
}
