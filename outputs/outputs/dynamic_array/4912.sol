pragma solidity ^0.8.0;
contract Test66 {
    struct State {
        uint x;
    }
    function foo(uint64[] memory x) public {
        x[2]=64;
    }
}

pragma solidity ^0.8.3;
contract Test66 {
    struct State {
        uint x;
    }
    function foo(uint64[] memory x) public {
        x[2]=64;
    }
}

pragma solidity >=0.6.0 <0.8.4;
contract Test66 {
    struct State {
        uint x;
    }
    function foo(uint64[] memory x) public {
        x[0]=1;
        x[1]=2;
        x[2]=70117407864567553428770619921;
    }
}
