pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x = 257;
        uint256 y = uint256(-x);
        require(-y > x,"");
        return y;
    }
}
contract modifierAB{
    function f() public view returns (uint256, uint256){
        uint256 x;
        uint256 y;
        x += 257;
        require(-x > 257,"");
        y -= uint256(0);
        require(uint256(0)>y,"");
        return x, y;
    }
}

contract modifierBDC{
    uint256 z;
    function f(uint256) public view returns (uint256){
        uint256 x = 257;
        z = uint256(-x);
        require(-x > z,"");
        return y;
    }
}
contract modifierBCDA{
    uint256 z;
    uint256 x;
    function f(uint256) public view returns (uint256, uint256){
        x += 257;
        z = uint256(0);
        require(-x > z,"");
        return x, y;
    }
}
contract modifierBCDAAA{
    function f() public view returns (uint256, uint256){
        uint256 x;
        uint256 y;
        x += 257;
        y += uint256(0);
        return x,y;
    }
}
