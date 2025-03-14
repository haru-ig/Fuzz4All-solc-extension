pragma solidity ^0.8.0;
contract Test67 {
    struct State {
        uint flag;
    }
    function foo() public {
        uint[] f; bool[] b; State[] s;
        f; b; s;
        f; b; s.push(s.pop());
        f
        b
        s
    }
}
pragma solidity ^0.8.0;
contract Test68 {
    struct State {
        uint flag;
    }
    uint[] f; bool[] b; State[] s;
    f; b; s;
    f; b; s.push(s.pop());
    f
    b
    s
}
