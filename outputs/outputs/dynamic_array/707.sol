pragma solidity ^0.8.0;
contract Test274Mutant {
    uint [999] a;
    constructor() public {
        a[998] = 2;
    }
    function test() public returns (bool) {
        if (a.length == 0) a[998] = 0;
        a[998] = 1;
        if (a[998] == 1) a[998] = 0;
        return false;
    }
}
contract Test274MutationChecker is Test274Mutant {
    function test274() public override returns (bool) {
        Test274Mutant.test274();
        a[3] = 1;
        a[3] = 0;
        if (Test274Mutant.test() == true) {
           a[3] = 1;
        }
        return a[3] == 0;
    }
}
