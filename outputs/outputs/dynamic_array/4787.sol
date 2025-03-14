pragma solidity ^0.8.0;
contract Test {
    uint[2] a;
    uint constant s_uint_2 = 2;
    function MutateData() public {
        a[0] = s_uint_2;
        a[1] += 1;
    }
}

pragma solidity 0.8.0;
contract Test {
    function () external payable {
        uint[2] b;
        for(uint i = 0; i < 2; i++) {
            b[i] = uint(s_int_1);
        }
    }
}

pragma solidity 0.8.0;
contract Test2 {
    uint[2] a;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
    }
}
