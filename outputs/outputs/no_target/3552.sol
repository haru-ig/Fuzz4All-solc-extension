pragma solidity ^0.8.0;
contract check {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
    }
    uint public i;
    constructor() public {
    }

    function f() public view {
        MyStruct storage s = mem[4];
    }

    modifier g() {
        i++;
        i += 2;
        i *= 3 + 9;
        selfdestruct(msg.sender);
        return;
    }

    modifier h() {
        uint z;
        z = s.z;
    }

    modifier j() {
        MyStruct storage s = mem[2];
    }

    modifier k() {
        uint x;
        x = s.x;
    }

    modifier l() {
        s = s;
    }

    modifier v() {
        uint w = mem[9].w;
    }

    modifier w() {
        s.x++;
        s.y--;
        s.z = 0xfffffffe00000000;
        s.x += 35;
        s.z |= (s.x & 0xffffffff00000000);
        return;
    }
}


pragma solidity ^0.8.0;


interface ERC165 {

    function supportsInterface(bytes4 interfaceId)
        external
        view
        returns (bool);
}



pragma solidity ^0.8.0;


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from
