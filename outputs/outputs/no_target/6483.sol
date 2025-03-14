pragma solidity ^0.8.0;
contract modifierBB{
    function f() public view returns (uint256){
        uint y;
        y -= 257;
        if (y >= 0)
            return 42;
        return y;
    }
}

pragma solidity ^0.8.0;
contract modifierBB{
    function f() public view returns (uint256, uint256, uint256){
        return (34, 12, 654);
    }
}
