pragma solidity ^0.8.0;
contract H {
    uint256 x;
    constructor(uint256 x_) public {
        x = x_;
    }
}

pragma solidity ^0.6.9;
contract J {
    uint[] internal y;
    uint z;
    constructor(uint256 z_) public {
        z = z_;
    }
    function f() public {
        uint256[3] memory input = [ 0, 1, 2 ];
        H x;
        (dynamic(address(x)), internal) = x.f(input, 5, dynamic(uint256(1)));
        x.f(y, 5, uint(10000));
    }
    function dynamic(uint a) private view returns (uint, uint) {
        uint b = 0;
        (uint, internal) = x.f(b, a, const());


        return (y[0], b);
    }
    function const() private  pure returns (uint) {
        return 0;
    }
}
