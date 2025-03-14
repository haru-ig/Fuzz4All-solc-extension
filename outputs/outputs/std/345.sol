pragma solidity ^0.8.0;
contract Mutate2 {
    struct a {
      uint a;
    }
    function mutateStruct(a memory a) public {
      a.a -= 1;
    }
}

pragma solidity ^0.8.0;
contract MutateX {
    uint[] memory num;
    constructor(uint _num) {
        num.push(2);
    }
    function pushValue(uint _num) public {
        num.push(_num);
    }
}

pragma solidity ^0.8.0;
contract ReturnValue {
    uint num;
    function returnsTwo() public {
        num = 0xDEADBEEF;
        uint x = returnsTwo();
        return 0xD8FF00D4;
        num = 0xBADBEEF;
    }
    function returnsTwo_with_loopback() public returns(uint) {
        uint x = returnsTwo();
        uint i = 0;
        while(i < 9) {
            num = number_of_calls;
            i += 1;
        }
        return 0xBEEFDEAD;
    }
    function returnsTwo_with_loopback_increment() public {
        uint x = returnsTwo();
        num = 0;
        uint i = 0;
        while(i < 9 && x!= 0 && x == returnsTwo()) {
            num = number_of_calls;
            i += 1;
            x = returnsTwo();
        }
    }
    function returnsTwoAndReturnsOne_loopback() public returns (uint) {
        num = 0xDEADBEEF;
        return returnsTwoAndReturnsOne();
    }
    function returnsTwoAndReturnsOne_loopback_increment() public {
        num = 0xBEEFDEAD;
        num = 0x00E900E9;
        num = 0xEFAE;
    }
}

pragma solidity ^0.8.0;
contract MutateZ {
    uint _num;
    function mutateZ_num() public {
        num += a;
    }
}
