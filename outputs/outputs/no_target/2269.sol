pragma solidity ^0.8.0;
contract mutation3 {
    uint public c;
    modifier m () {
        c = 3 + c;
        _;
    }

    function m() public {
        m();
    }
}
contract mutation3 {
    uint public c;
    modifier m () {
        c = 3 - c;
        _;
    }

    function m() public {
        m();
    }
}
contract mutation3 {
    uint public c;
    modifier m () {
        c = c + c;
        _;
    }

    function m() public {
        m();
    }
}

pragma solidity ^0.7.0;
contract mutation3 {
    uint public c;
    modifier m () {
        c = 3 + c;
        _;
    }

    function m() public {
        m();
    }
}
contract mutation3 {
    uint public c;
    modifier m () {
        c = 3 - c;
        _;
    }

    function m() public {
        m();
    }
}
contract mutation3 {
    uint public c;
    modifier m () {
        c = c + c;
        _;
    }

    function m() public {
        m();
    }
}
