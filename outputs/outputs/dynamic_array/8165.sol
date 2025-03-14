pragma solidity ^0.8.0;
contract Evm {
    Evm public z;
    Evm public y;
    Evm internal evm;
}

pragma solidity ^0.8.0;
contract Reencoding {
    function test(Evm internal x, Evm internal y) returns (Evm internal z) {
        z = x;
        x = y;
        return z;
    }
}


contract Mutations {
    MutatedFabric z;
    MutatedFabric y;
    MutatedFabric internal evm;
    constructor () {
        z = new MutatedFabric();
        y = new MutatedFabric();
        evm = new Evm();
    }
    function test(Evm internal x, Evm internal y) returns (Evm internal z) {
        z = x;
        x = y;
        return z;
    }
    function test2() public {
        return test(z, y);
    }
    function test3(uint8 internal param) public {
        z = new MutatedFabric();
    }
    function test4() public {
        return test(evm);
    }
    function test5() public {
        return test(evm);
    }
    function test6(uint u, uint v) public {
        z = new MutatedFabric();
        return test(x, evm);
    }
    function test7(uint u) public {
        z = new MutatedFabric();
        return test(x, evm);
    }
    function test8() public {
        y = new MutatedFabric();
    }
    function test9(uint u) public {
        y = new MutatedFabric();
    }
    function test10() public {
        return test(x, y);
    }
    function test11(uint u, uint v) public {
        y = new MutatedFabric();
        return test(x, evm);
    }
    function test12(uint u, uint v) public {
        y = new MutatedFabric();
        return test(x, evm);
    }
    function test13() public {
        return test(y, evm);
    }
    function test14(uint u) public {
        return  test(z, u);
    }
    function test15(uint u, uint v) public {
        return z = y = new MutatedFabric();
    }
    function test16() public {
        return test(x, y);
    }
    function test17() public {
        return test(evm);
    }
}
