pragma solidity ^0.8.0;
contract Example{
    function isValid() public returns(bool)   {
        if (address(this).balance == 0) {
            return false;
        }
    }
}
