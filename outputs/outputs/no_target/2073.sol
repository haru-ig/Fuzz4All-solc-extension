pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    constructor(uint256 _b) public {
        a = 0;
        b = _b;
        c = 0;
    }
}

pragma solidity ^0.8.0;
contract CallSideRevert {
    constructor(uint256 a) public {

        emit A(a);
    }

    event A(uint256 a);
}

pragma solidity >=0.6.0;
contract CallSideRevert {

}
