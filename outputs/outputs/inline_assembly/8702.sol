pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_,uint y_)public{
            if (z_ == 5) return;
            if (y_ % 2 == 1) return;
            y = 32;
            add();
    }
    function add() public {
        z += x;
    }
}
contract Modul {
    uint x;
    uint y;
    uint z;
    function Add(uint z_,uint y_)public{
            if (z_ == 5) return;
            if (y_ % 2 == 1) return;
            y = 32;
            add();
    }
    function add() public {
        z += x;
    }
}






pragma solidity ^0.7.6;


library ERC20Basic {
    using SafeMath for uint256;

    function totalSupply() public view returns (uint);

    function balanceOf(address who) public view returns (uint);
