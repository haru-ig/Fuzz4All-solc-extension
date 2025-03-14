pragma solidity ^0.8.0;
contract Test71 is ITest70 {
    constructor() public {
        Test70();
    }
    function foo() public virtual returns(int32) {
        return 10;
    }
}
