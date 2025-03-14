pragma solidity ^0.8.0;
contract ArrayOperations {
    function appendE(uint32[] memory _arr) public pure returns(uint32) {
        return _arr.length;
    }
}
contract ArrayOperations1 is ArrayOperations {
}
contract ArrayOperations2 is ArrayOperations {
}
contract ArrayOperations3 is ArrayOperations {
}
contract ArrayOperations4 is ArrayOperations {
}

pragma solidity ^0.8.0;
contract ArrayTests {
    function testAppendE(address _addr, uint _val) public {
        address[] memory a = new address[](1);
        a.length++;
        a.length++;

        a[_addr] = _addr;
        a[_addr].testBool = false;

        (a.length.value)!= 0;

        ArrayOperations memory array = ArrayOperations(_addr);
        address a1 = (a.value)[a.length-1];
        ArrayTests memory test = ArrayTests(a1);
        bool _b = test.testBool;

        uint m = 2;
        uint32[] memory b = new uint32[](2);
        b[0] = m;
        b[1] = m;
    }
}
contract ArrayTests1 is ArrayTests {
}
contract ArrayTests2 is ArrayTests {
}
contract ArrayTests3 is ArrayTests {
}
contract ArrayTests4 is ArrayTests {
}
contract ArrayTests5 is ArrayTests {
}
contract ArrayTests6 is ArrayTests {
}
contract ArrayTests7 is ArrayTests {
}
contract ArrayTests8 is ArrayTests {
}
