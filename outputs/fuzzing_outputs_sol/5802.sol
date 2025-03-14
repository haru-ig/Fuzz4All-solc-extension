pragma solidity ^0.8.0;
contract SemanticallyEquivalentFallbacks {
    uint256 a;
    uint256 b;
    constructor() {
        a = 4;
    }
    function test() external {
        if(a == 0){

            a();
        }

        fallback();
    }
}
contract CallerFallbacks {
    uint256 storageData;
    constructor() {
        storageData = 8;
    }
    function test() public {
        if(storageData == 7){
            sender();
        }
    }
    fallback() external payable {
        storageData = 7;
    }
}
contract SolidityFallback {
    function test(uint256 a, uint256 b) public {
        uint256 x;
        x = a + b;
        a = x;
        (x + b) = a + x;
    }
}
