pragma solidity ^0.8.0;
contract mutator1202{
    bool isInitialized;
    uint256 _h;
    uint8 _w;
    constructor() { _h = 0x801; _w = 8;}
    function f() public {
        _w = 64;
        emit Emit();
    }
    function g() public view {
        emit Emit();
    }
    function h() public pure {
        emit Emit();
    }
    event Emit();
}

pragma solidity ^0.8.0;
contract example{

    event Emit();
    uint256 _h;

    function f() public {
        _h = 0x801;
        emit Emit();
    }
}

pragma solidity ^0.8.0;
contract example{

    event Emit();
    uint256 _h;
    uint8 _w;

    function f() public {
        _w = 64;

        _h = 0x801;
        emit Emit();
    }

}
