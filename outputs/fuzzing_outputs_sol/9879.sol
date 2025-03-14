pragma solidity ^0.8.0;
interface Old {
    function old(uint _a);
}

pragma solidity ^0.8.0;
contract Old1 {
    function old(uint _a) pure public returns(uint) {
        return 2*_a;
    }
}

pragma solidity ^0.8.0;
contract Old2 is Old, Old1 {
    function old(uint _a) pure public returns(uint) {
        return 2*_a;
    }
    function old(uint _a) pure public override returns(uint) {
        return 2*_a;
    }
}
contract Old_Caller{
    function fallback() public payable{
        Old_Caller _oldCaller = Old_Caller(0x8271C5b45916B00d8C91c9173346f4e0Bf931829);
        _oldCaller.old(uint(0xDEADBEEF));
    }
}
