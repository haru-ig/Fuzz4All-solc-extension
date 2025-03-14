pragma solidity ^0.8.0;
contract G {
    function g() public pure {
    }
}
contract H {
    function h() public pure {
    }
}
contract H2 {

    function h2() public pure {
        g;
    }
}
contract H3 {

    struct S {uint b;}
    uint[2] x;
    S storage s = x[1];
    address e;
    constructor () public {
        h3;
    }
}
contract H4 {

    function h4() public pure {
        g;
    }
}
contract H5 {
    function h5() public pure {
    }
}
contract H6 {

    function h6() public pure {
        g;
    }
}
