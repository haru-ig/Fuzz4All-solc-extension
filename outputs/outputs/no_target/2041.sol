pragma solidity ^0.8.0;
contract Modification4 {
    address payable public c;
    uint256 public d;
    string public e;

    constructor(address payable _c, uint _d, string memory _e) public {
        c = _c;
        d = 1;
        e = _e;
    }

    function Modification4(uint _d, string memory _e) public {
        d = _d;
        e = _e;
    }
}

pragma solidity ^0.8.0;
contract Modification7 {
    Modification2 mod2;
    Modification4 mod4;

    constructor(address payable _c, uint _d, string memory _e) public {
        mod2 = new Modification2(_e);
        mod4 = new Modification4(_d, _e);
    }

    function Modification7(uint _d, string memory _e) public {
        mod2 = new Modification2(_e);
        mod4 = new Modification4(_d, _e);
    }
}
