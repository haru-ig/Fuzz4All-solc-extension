pragma solidity ^0.8.0;
library MutateWipeBc6 {
    address addr;
    function wipe1() public pure {
        addr;
    }
}
pragma solidity ^0.8.0;
library MutateWipeBc5 {
    uint a;
    struct b {

    }
    function wipe2() public pure {
        b({
            a
        });
    }
}
pragma solidity ^0.8.0;
library MutateWipeBc4 {
    bytes memory a;
    struct b {
        bytes4 id;
    }
    function wipe3() public pure {
        b({id: 0x7D67b262a5be0000000000000000be82748a7c57});
    }
}
pragma solidity ^0.8.0;
library MutateWipeBc3 {
    uint80 i;
    struct b {
        uint80 i;
    }
    function wipe4() public pure {
        b({i: 0x7D});
    }
}
pragma solidity ^0.8.0;
library MutateWipeBc2 {
    function wipe5(uint _x, uint152 _v) pure public returns(bool) {

    }
}
pragma solidity ^0.8.0;
library MutateWipeBc1 {
    function wipe6() public pure {
        i
        _x;
    }
}

<fim_middle>library MutateWipeBc2 {
    event log0(uint _x, uint152 _v);
    function wipe7() public pure {
        log0(0x0, uint152(-9223372036854776000000000));
    }
}
