pragma solidity ^0.8.0;
contract E5 {
        uint256 e;
        uint256 a;
    constructor() public {
        e^=1^1;
        a^=1;
    }
    function h() public {
        e^=2^2;
        a^=2;
    }
    function i() public {
       e^=2^2;
        a^=2;
    }
}

pragma solidity ^0.8.0;
contract E6 {
        uint256 e;
        uint256 a;
    constructor() public {
        f{
            (a,e ) = address{this}("");
            a = e;
        }
        a^=1;
        a^=2;
        a^=3;
        e^=1;
        e^=2;
    }
    function f() public view returns (uint256 _a, uint256 _e) {
        (, address _) = address{this}("");
        return (_a, _e);
    }
    function h() public {
        (e, a) = address{this}("");
        a^=1;
        a^=2;
        a^=3;
        e^=1;
        e^=2;
    }
}
