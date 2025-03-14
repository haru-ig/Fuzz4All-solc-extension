pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample91 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    function setMyCounter2() public {
        Counter++;
        if (isCalled) {
            isCalled = false;
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            isCalled = false;
            setMyCounter2();
        }
    }
    function increment() public {
        Counter = Counter + 1;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
            isCalled = false;
            setMyCounter2();
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample45 {

    struct Test {
        int128 a;
        string b;
        uint8 c;
    }

    Test[] public tests = [
        Test(10, "x", 5)
    ];

    function test() public view returns (int128) {
        return tests[0].a;
    }
}
