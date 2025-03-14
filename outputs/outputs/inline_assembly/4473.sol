pragma solidity ^0.8.0;
contract Emulator7 {
    function init() public {
        x = y + x;
    }
    function add(uint x,uint y) public pure returns(uint) {return x + y;}
    function write() public {}
}

pragma solidity ^0.8.0;
contract Emulator5 {
    function init() public {
        x = y+x;
    }
    function add(uint x,uint y) public pure returns(uint) {return x+y;}
    function write() public {}
}

pragma solidity ^0.8.0;
contract Emulator3 {
    function init() public {
        x= y + x;
    }
    function add(uint x,uint y) public pure returns(uint) {return x+y;}
    function write() public {}
}

pragma solidity ^0.8.0;
contract Emulator1 {
    uint x; uint y;
    function init() public {
        gas;
        x=y + x;
    }
    function add(uint x,uint y) public pure returns(uint) {return x+y;}
    function write() public {}
}
