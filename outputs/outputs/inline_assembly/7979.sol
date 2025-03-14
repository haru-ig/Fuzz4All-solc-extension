pragma solidity ^0.8.0;
contract SUT {
    function update(uint _x) public view returns (uint, uint, uint, uint) {
            (y, x, z,,, ) = (2, 3, 4, 5, 60);
            return (_x, y, x, z);
        }
    }
