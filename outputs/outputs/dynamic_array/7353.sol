pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        dynArr[0] += 3;
        dynArr[1] += 9;
    }
    uint32[] public dynArr;
}
contract A {
    function test() public {
        dynArr = [2, 2];
        uint _returnedValue = dynArr[0];
    }
    uint[] public dynArr;
}
contract B {
    uint32[2] public dynArr;
    uint256 public dynCallDarr[2];
    uint256 public dynArrCalldata[1];

    function test() public {
        dynArr = [2, 2];
        dynCallDarr[0] = dynArr[0];
    }
    uint[] public dynArr;

    function test2() public {
        dynArrCalldata[0] = dynCallDarr[0];
    }
    uint[] public dynCallDarr;
}

contract testCaller {
    uint[3] public dynArr;
    function test() public {
        dynArr[0] += 2;
    }
    uint[] public dynArr;
}
