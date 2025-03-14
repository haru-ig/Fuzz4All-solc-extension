pragma solidity ^0.8.0;
contract modifierB3{
    function f() public view returns (uint256){
        while (true){
            uint256 r;
            if (uint256(0)>r)
                    revert();
            return r;
        }
    }
}

contract modifierB4{
    uint256 r;
    function modifierG() public  view returns (uint256) {
        r = 42;
        if (uint256(0)>r)
            return;
        if (uint256(0)<r)
            return;
        return;
    }
}
