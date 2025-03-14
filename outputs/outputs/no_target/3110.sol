pragma solidity ^0.8.0;
contract third {
    function g() public pure returns(uint) {
        return 10;
    }
}

pragma solidity ^0.8.0;
contract second {
    function g() public pure returns(uint) {
        uint storage s = g();
        g();
        return s;
    }
}

pragma solidity ^0.8.0;
contract first {
    uint x = g();
    uint y = 10;

}

pragma solidity ^0.8.0;
contract test{
    function g() public pure returns(uint) {
        return 10;
    }
}

pragma solidity ^0.8.0;
contract test2{
    function g() public pure returns(uint) {
        return 10;
    }
}
