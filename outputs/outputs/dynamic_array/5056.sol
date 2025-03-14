pragma solidity ^0.8.0;
contract Test60E1 {
    function f_() public pure {
        Test60E1.f_();
    }
}
contract Test4069C {
    function f_() public pure {
        Test4069C.f_();
    }
}
contract TestD6E47 {
    function f_() public pure {
        TestD6E47.f_();
    }
}
contract TestF045F2 {
    function f_() public pure {
        TestF045F2.f_();
    }
}
contract Test5206E {
    function f_() public pure {
        Test5206E.f_();
    }
}
contract Test7571F {
    function f_() public pure {
        Test7571F.f_();
    }
}
contract TestBCA1F {
    function f_() public pure {
        TestBCA1F.f_();
    }
}

contract Test922F {
    struct State {
        uint8 x;
    }
    constructor(uint8 _x) public {
        State memory s = State(f(0));
    }

    function f(State storage s) private pure {
        s.x = 0;
    }
}
contract Test1E3A7213E2592 {
    function test(uint[3] memory a) public pure {
       uint[3] memory ba=add(a);
    }
    function add(uint[] memory x) internal pure returns (uint[] memory){
        return x;
    }
}
