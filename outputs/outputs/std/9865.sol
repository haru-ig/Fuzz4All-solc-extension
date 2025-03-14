pragma solidity ^0.8.0;
contract MutatedS8 {
    uint x;
    uint a;
    uint b;
    constructor() {
        a = 87;
        b = 12;
    }
    function update(uint y) public {
        x = y;
    }
    function say() public view returns (uint) {
        return (x);
    }
}

pragma solidity ^0.8.0;
contract ImprovedMutatedS8 is MutatedS8 {
    uint x = 88;
    uint y = 1234;
    uint z = 0;
    constructor(uint x_) {
        x = x_;
    }
    function update(uint z_) public {
        z = z_;
        x = x_ + 1;
    }
    function say() public view returns (uint) {
        return (x);
    }
}

pragma solidity ^0.8.0;
contract Sum5 {
    uint a;
    uint b;
    uint public c;
    function setValues(uint _a, uint _b) public {
        a = _a;
        b = _b;
        c = 5 * a + 7 * b;
    }
    function getResult() public view returns (uint) {
        return (c);
    }
}
